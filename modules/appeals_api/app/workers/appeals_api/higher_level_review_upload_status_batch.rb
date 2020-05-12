# frozen_string_literal: true

require 'sidekiq'

module AppealsApi
  class HigherLevelReviewUploadStatusBatch
    include Sidekiq::Worker

    sidekiq_options 'retry': true, unique_until: :success

    def perform
      return unless Settings.decision_review.higher_level_review_updater_enabled

      Sidekiq::Batch.new.jobs do
        higher_level_review_ids.each_slice(slice_size) do |ids|
          HigherLevelReviewUploadStatusUpdater.perform_async(ids)
        end
      end
    end

    private

    def higher_level_review_ids
      @higher_level_review_ids ||= HigherLevelReview.received_or_processing.order(created_at: :asc).pluck(:id)
    end

    def slice_size
      (higher_level_review_ids.length / 5.0).ceil
    end
  end
end
