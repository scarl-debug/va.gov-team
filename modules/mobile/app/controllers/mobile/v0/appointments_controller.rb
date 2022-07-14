# frozen_string_literal: true

module Mobile
  module V0
    class AppointmentsController < ApplicationController
      after_action :clear_appointments_cache, only: %i[cancel create]

      def index
        use_cache = params[:useCache] || true
        start_date = params[:startDate] || beginning_of_last_year.iso8601
        end_date = params[:endDate] || one_year_from_now.iso8601
        reverse_sort = !(params[:sort] =~ /-startDateUtc/).nil?

        validated_params = Mobile::V0::Contracts::Appointments.new.call(
          start_date: start_date,
          end_date: end_date,
          page_number: params.dig(:page, :number),
          page_size: params.dig(:page, :size),
          use_cache: use_cache,
          reverse_sort: reverse_sort,
          included: params[:included],
          include: params[:include]
        )

        appointments = fetch_cached_or_service(validated_params)
        page_appointments, page_meta_data = paginate(appointments, validated_params)

        render json: Mobile::V0::AppointmentSerializer.new(page_appointments, page_meta_data)
      end

      def cancel
        if Flipper.enabled?(:mobile_appointment_use_VAOS_v2, @current_user)
          appointments_v2_service.update_appointment(appointment_id, status_update)
        elsif uuid?(appointment_id)
          # appointment request cancel ids is appointment id while other appointments will be encoded string
          appointment_request = appointments_proxy.get_appointment_request(appointment_id)
          appointments_proxy.put_cancel_appointment_request(appointment_id, appointment_request)
        else
          decoded_cancel_params = Mobile::V0::Appointment.decode_cancel_id(appointment_id)
          # validates inputs
          Mobile::V0::Contracts::CancelAppointment.new.call(decoded_cancel_params)

          appointments_proxy.put_cancel_appointment(decoded_cancel_params)

        end

        head :no_content
      end

      def create
        Rails.logger.info('mobile appointments create', user_uuid: @current_user.uuid,
                                                        params: params.except(:description,
                                                                              :comment,
                                                                              :patient_instruction,
                                                                              :contact,
                                                                              :reason))

        new_appointment = appointments_helper.create_new_appointment(params)
        serializer = VAOS::V2::VAOSSerializer.new
        serialized = serializer.serialize(new_appointment, 'appointment')
        render json: { data: serialized }, status: :created
      end

      private

      def appointments_v2_service
        VAOS::V2::AppointmentsService.new(@current_user)
      end

      def appointment_id
        params.require(:id)
      end

      def status_update
        params.require(:status)
      end

      def uuid?(id)
        uuid_regex = /^[0-9a-f]{32}$/
        uuid_regex.match?(id)
      end

      def use_cache?(validated_params)
        # use cache if date range is within beginning of last year to one year from now and use_cache is true
        validated_params[:start_date] >= beginning_of_last_year.iso8601 &&
          validated_params[:end_date] <= one_year_from_now.iso8601 && validated_params[:use_cache]
      end

      def clear_appointments_cache
        Mobile::V0::Appointment.clear_cache(@current_user)
      end

      def beginning_of_last_year
        (DateTime.now.utc.beginning_of_year - 1.year)
      end

      def one_year_from_now
        (DateTime.now.utc.beginning_of_day + 1.year)
      end

      def fetch_cached_or_service(validated_params)
        appointments = nil
        appointments = Mobile::V0::Appointment.get_cached(@current_user) if use_cache?(validated_params)

        # if appointments has been retrieved from redis, delete the cached version and return recovered appointments
        # otherwise fetch appointments from the upstream service
        if appointments
          Rails.logger.info('mobile appointments cache fetch', user_uuid: @current_user.uuid)
        else
          appointments = appointments_proxy.get_appointments(
            start_date: [validated_params[:start_date], beginning_of_last_year].min,
            end_date: [validated_params[:end_date], one_year_from_now].max
          )
          Mobile::V0::Appointment.set_cached(@current_user, appointments)
          Rails.logger.info('mobile appointments service fetch', user_uuid: @current_user.uuid)
        end

        appointments.filter! { |appt| appt.is_pending == false } unless include_pending?(validated_params)
        appointments.reverse! if validated_params[:reverse_sort]

        appointments
      end

      def paginate(appointments, validated_params)
        appointments = appointments.filter do |appointment|
          appointment.start_date_utc.between?(
            validated_params[:start_date].beginning_of_day, validated_params[:end_date].end_of_day
          )
        end
        url = request.base_url + request.path
        Mobile::PaginationHelper.paginate(list: appointments, validated_params: validated_params, url: url)
      end

      def include_pending?(params)
        params[:include]&.include?('pending') || params[:included]&.include?('pending')
      end

      def appointments_proxy
        Mobile::V0::Appointments::Proxy.new(@current_user)
      end

      def appointments_helper
        @appointments_helper ||= Mobile::V0::VAOSAppointments::AppointmentsHelper.new(@current_user)
      end
    end
  end
end
