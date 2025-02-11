
# Release Overview 

There are two ways we can update our app:



* **Release:**  Releases are every 2 weeks and include new features, improvements, and bug fixes
* **Hotfix:**  Hotfixes are reserved for major issues/ urgent bug fixes requiring an off-cycle release

**Release Cadence**

* At the beginning of each sprint, a release branch is created, this will hold all code that will make it into the release occurring in 2 weeks
* Issues that are labeled as front-end and have been committed to the sprint are tagged with label ‘Target Release: XX/XX/XX’ (see table below for sprint to release date matrix)
    *  We modify as necessary during the sprint if an issue will not make the targeted release
* Once development/QA has been completed within the sprint, the issue will be updated with the Release date [using the Zenhub Release feature]
* Tickets which have been merged to the develop branch by 10:30 PM pacific time of the previous sprint end date will be part of the release 
    * Example:
        * Target Release Date 12/7/21
        * Sprint Start 11/10/21-11/23/21
        * Merged in dev branch by 11/23/21
* Thirteen days prior to the release, sign off activities begin (See Release Sign Off)
    *  Bot auto generates a release sign off ticket
    * The ticket is assigned to PM release lead, PO stakeholder, Design lead, & Engineering Lead to complete all tasks
* One week prior to the release sign off is due and the app is sent to the app store for review
* On release day, the app is submitted to the app store(s) with latest app version

See full release calendar <a href="https://docs.google.com/spreadsheets/d/14jYcB3zhib3T9jyQjNpsfPLkAAqhLdAhXBPUQtsodgI/edit?usp=sharing">here</a> 










# Release Readiness Checklist

**Who** :  Product Manager, Design, Dev, QA, and VA POs

**Purpose** :  Define the scope of features, defects, enhancements that will be part of the release.  The process of working through the checklist helps uncover any remaining concerns before features go to production.  


<table>
  <tr>
   <td><strong>General Release</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>
  
<li>All committed issues have been coded and marked as closed in ZenHub by the end of the sprint - Engineering 
 
<li>Ensure all tickets are tagged appropriately (epic, labels, release date, etc)  - Engineering

<li>QA testing has been completed - QA 
   
<li>Follow up on any open issues/concerns - Relevant PMs 
   
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Product Manager</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>
  
<li> App Store (Va.gov, Apple, Android) content and image updates 
 
<li> Call Center Guide 

<li> In-App Whats New Alert Box content 

<li> Determining what bugs need to be completed pre-MVP and those that are not 
   
<li> Close out the epic checklist list 

<li> Coordinate with POs on updates (including external POs) 

<li> Release approval after QA approval
</li>

</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Development</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>All development work has been completed and meets acceptance criteria

<li>All defects assigned to the release has been fixed

<li>All development documentation has been updated

<li>All unit test code has been updated

<li>All reviews have been completed
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td>
    <strong>Quality Assurance</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>QA plan and test cases have been updated

<li>Testing completed and features/issues that are part of the release have passed validation 
<ul>
 
<li>What has been developed, meets acceptance criteria
 
<li>Issues that have been identified are addressed with dev
 
<li>New issues that are found outside of acceptance criteria a ‘new’ ticket is created
 
<li>Full Regression  
<ul>
  
<li>In depth testing to ensure the existing functionalities haven’t been adversely affected. 
</li>  
</ul>
 
<li>Document findings in TestRail
</li> 
</ul>
</li> 
</ul>
   </td>
  </tr>
</table>



# Release Sign Off

**Who**:  Product Management, Design, Dev, QA, and VA POs

**Purpose**: Formal way of declaring the completion of development & testing and now the app is ready for release.  

**Due**: Release sign off is due 1 week prior to the release 

**Release Sign off Ticket Work:**  The release sign off ticket is generated 13 days prior to the release.  The following items are expected to be completed for the release sign-off milestone:


<table>
  <tr>
   <td>Release version
   </td>
   <td> Purpose:  To prepare the app for release, a release version is needed for the app store. 
<p>
Owner:  Engineering, the release version update is automated.  No action needed on the release ticket
   </td>
  </tr>
  <tr>
  <td>Release Checklist
  </td>
   <td>Purpose: Checklist to confirm all tasks have been completed before sign off
<p>
Owner: Release Manager responsible, Flagship Team accountable 
<p>
- QA release testing is completed and approvals of the release; if it fails PMs to determine if release should proceed
<p>
- Pull in What's New Text for the App store from the ticket 
<p>
- Pull In-App Whats New Content from ticket
<p>	
- Product to approve of the release after QA completes their approval 
<p>
- VA PO to approve the ticket by commenting on the ticket comment/approve vX.XX.O after Pull Request has been merged and release is approved
<p>
Example completed <a href="https://github.com/department-of-veterans-affairs/va-mobile-app/issues/2555">ticket</a>
<p>
   </td>
  </tr>
  <tr>
   <td>Severe bugs
   </td>
   <td>Purpose: A list of open Sev1 & Sev2 bugs.  An update on each of the bugs should be included in the notes section (indicate if they need review, if they are scheduled, or blocked, etc).
<p>
Owner:  Product Management to coordinate with engineering and QA  
   </td>
  </tr>
  <tr>
   <td>Sign-Offs
   </td>
   <td>Purpose: Confirmation that all release tasks have been completed and the planned release is approved to move forward
 
  <p> 
  
  QA: Sign off when testing/regression is successfully complete
  <p> 
  Product:  Sign off when high level validation is complete, QA has completed sign off complete, and release checklist tasks completed
  <p>
  VA POs:  Sign off when notification from PM that ticket is ready for sign off, PR updates are approved (what's new content, app image & content updates, etc), and ok to move forward with the release. 
   </td>
  </tr>
</table>



# App Store Review

**Purpose**:  Prior to the release, an app review submission is sent to the App Store and Google Play.  As part of this process the app store(s) review the mobile app updates to determine its candidacy as a live component on the store (i.e. making sure it runs, rules are followed, no bugs, crashes, etc).  They typical turn-around time for feedback is 24-48 hrs

**When**: Submission for app review is 1 week prior to the release

**Who**: Engineering


# App Store Submission (Production Release)

**Purpose**:  New features, improvements, and bug fixes are released to the app store. 

**When**: App store release process is done through automation around 9:00 AM EST/10:00AM EDT (1400 UTC) on release day. 

**Who**: Engineering, 

 Post Release & Monitoring Activities


<table>
  <tr>
   <td><strong>Product Management</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>Update release-summary.md with release highlights

<li>Check DSVA slack channel #va-mobile-app to confirm release success.  If failures check in with engineering 

<li>Screenshot and send release report to Program Manager

<li>Close the release in ZenHub	
						
</li>
</ul>
   </td>
  </tr>
  <tr>
   <td><strong>Engineering</strong>
   </td>
  </tr>
  <tr>
   <td>
<ul>

<li>Monitoring:  To monitor successful build or failures; check DSVA slack channel #va-mobile-app on the DSVA 

<li> If the build fails, engineering will release manually	
</li>
</ul>
   </td>
  </tr>
</table>

# Overview of mobile releases

We recorded a presentation to VA stakeholders in April 2023 that included a brief overview of elements of the release process at a high level (<a href="https://user-images.githubusercontent.com/94404065/234997065-dc92c4a0-89b2-4d67-9163-5ab9d1cd94f0.mp4">video</a>), and the release cadence (<a href="https://user-images.githubusercontent.com/94404065/234997086-6478699b-1dc8-4165-9e7d-01eb75fc85a1.mp4">video</a>). (Slides referenced in each of those recordings in <a href="https://github.com/department-of-veterans-affairs/va.gov-team/files/11348079/PDF.Mobile.app.release.process.QA.pdf">this PDF</a>)

# Go to Market Strategy but not Part of Release 
 * Work that Flagship PMs will need to own and perform outside of the Release Ticket work that the Release Manager handles
    * Apple Store Image Updates
    * Android Play Store Image Updates
    * Va.Gov App Store Content / Image Updates
    * Call Center Updates 

# RACI for Mobile Releases 

| Action | Description | Responsible (Execute) | Accountable (Owner) | Consulted | Informed | Documentation |
| -------| ----------- | ----------- | ----------- | --------- | -------- | ------- | 
| Call center guide updates with new production changes | Call Center guide needs to be updated for any production chagnes so that VA Customer Service has most recent document in order to serve Veterans inquirying in | Flagship PM | Flagship PM | UX, VA Call Center | QA and Release, PO | [Call Center Process doc](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/releases/Call%20Center%20Docs) |
| Apple App Store Whats New Content| Determine if there are content changes needed within the Apple Store App. Flagship PM to create ticket and coordinate with other PMs for a consolidate copy amongst all changes. Release manager will pull content from ticket to release ticket. | Release Manager | Flagship PM | Content | PO | [App Store Process doc](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/releases) |
| Apple App Store Phone Images | Images within the app store need to be updated if visuals have changed. This is needed for iPad and iPhone | Flagship PM | Flagship PM | UX, Front-End Engineering | QA and Release, PO | [Images process doc](https://department-of-veterans-affairs.github.io/va-mobile-app/docs/Operations/Updating%20the%20App%20Stores/) |
| Google App Store Whats New Content | Determine if there are content changes needed within the Apple Store App. Flagship PM to create ticket and coordinate with other PMs for a consolidate copy amongst all changes.  Release manager will pull content from ticket to release ticket.| Release Manager | Flagship PM | Content | PO | | [App Store Process doc](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/releases) |
| Google Phone Images | Phone images within the app store need to be updated if visuals have changed | Flagship PM | Flagship PM | UX, Front-End Engineering | QA and Release, PO | [Images process doc](https://department-of-veterans-affairs.github.io/va-mobile-app/docs/Operations/Updating%20the%20App%20Stores/) |
| Va.gov App Store Content | Determine if there are content changes needed within the Apple Store App. Flagship PM to create ticket and coordinate with other PMs for a consolidate copy amongst all changes. | Release Manager | Flagship PM | Content| PO | | [Va.gov App Store Doc ](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/VA.Gov%20App%20Store) |
| VA.gov Images | Determine if the VA.Gov app store needs to be updated with copy / images.  | Flagship PM | Flagship PM | Content, Engineering, UX | PO |  [Va.gov App Store Doc ](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/VA.Gov%20App%20Store) |
| In-App Whats New Content | Determine if the in-app Alert Box needs to be shown in the Flagship App for Veterans to see and also what copy should be displayed. Ticket is needed for this | QA and Release | Flagship PM | Content, PO | | [Whats New Content Process Doc](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/products/va-mobile-app/releases)
| Orchestrating Release Ticket Management |  Intent is to push out code Flagship App has built so this is coordinating the release ticket informatio and process based on what Flagship App, Github, and reporting data. Coordinating releases and having the final go no go say. | Release Manager | Release Manager | Flagship PM,  Engineering, QA, Content  | Mobile Team | [Mobile App Release Proces](https://docs.google.com/document/d/1Ws-R12rEnekHmVVl23KQeiAYathlZsL5/edit#heading=h.6hlc2oouewhp) | 
| Re-start a failed Release Workflow | Instances where the release build does not work, it requires either edits or restarting the build | Engineering | Release Manager | POs, PMs | Rest of Mobile | 
| Hot fix Implementation | | Engineering | QA and Release Team |  POs, PMs, QA, | Team | [Incident Response](https://department-of-veterans-affairs.github.io/va-mobile-app/docs/Operations/Incident%20Response/) |
| Adding new code to the release branch or removing code from the release branch | | Engineering | QA and RElease Team | POs, PMs, QA | Team | 
| Ensuring Mobile is up to date with App store requirements | | Engineering | Release Manager | QA and Release Team | 
