`[WIP] Landing Page`
# Accessibility Landing Page

<details><summary>Toggle to view details about this Work in Progress Landing Page</summary>
  <br>
The goal of this page is to provide a well-organized clearinghouse of information about VA's accessibility practices. Our mission - to point VFS teams to the information, tools, and people they need to make VA.gov accessible, beyond compliance.

## About this page
The structure and content of this page is based on:
- [CAIA's documentation content inventory](https://docs.google.com/spreadsheets/d/1YsMFmvgD4hEc93KTaTPJwvR5heHsCNgC3cwj53Eu3Ys/edit#gid=737007164)  
- [CAIA's modeling exercise](https://airtable.com/app0xn5tf3PzkmRgN/tblRWeBHtjv1iaJbf/viwXbamm2X62BkHL5?blocks=hide)

</details>

# Accessibility on VA.gov
VA is here to serve American Veterans, and [approximately 40% of of them have an identified disability](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/vsa/accessibility/disability-statistics-veterans.md). Therefore:
- We strive to make VA.gov as accessible for Veterans as possible.
- We aim to do more than pass a Section 508 audit - we focus on usability, not just compliance.
- We "shift left," integrating accessibility practices across research, design, and development disciplines, starting as early in the product cycle as possible.


## Strategy and standards
- Learn more about our [accessibility strategy](https://depo-platform-documentation.scrollhelp.site/getting-started/modernized-va-gov-accessibility-strategy).
- Find out what [experience standards](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/va-gov-experience-standards) a VA.gov product needs to meet before it launches.
- The [accessibility defect severity rubric](https://depo-platform-documentation.scrollhelp.site/developer-docs/accessibility-defect-severity-rubric) is our common language for determining the seriousness of an accessibility issue.

We aim to follow [inclusive design best practices](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/teams/vsa/accessibility/learning-sessions/abc01-inclusive-design-best-practices
) in all of our work.

## Accessibility by discipline
All of us are responsible for the accessibility of our products. And every discipline has a role:

<details><summary>Researchers</summary>

### Accessibility for researchers

The best way to ensure that a product is accessible is to test it with users of assistive technology. Designing for complex needs first - like aging Veterans above the age of 55 or Veterans with disabilities - means designing for the future of **all** Veterans who age or acquire disabilities later in life. (Learn about [inclusive research practices](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/vsa/accessibility/research/introduction.md).)

#### Get help
The CAIA team can support your inclusive research sessions by:
- Reviewing your research plan
- Providing technical support during sessions with assistive technology (AT) users
- Observing sessions with AT users from an accessibility point of view, and provide findings

Put in an[ AT Research Support Ticket](https://github.com/department-of-veterans-affairs/va.gov-team/issues/new?assignees=coforma-terry&labels=508%2FAccessibility%2C+sitewide+CAIA%2C+sitewide+accessibility%2C+CAIA-a11y-research&projects=&template=caia-a11y-research.yaml&title=%5BCAIA+A11y+Research%5D%3A+Team+name%2C+product+name) with CAIA to get started.

#### Recruiting participants
- Use the [MVS sampling method](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/vsa/accessibility/research/recruitment.md#maximum-variation-sampling) to recruit participants that use assistive technology
- Include mobile participants, or have a separate study for mobile usability testing
- Read more about [inclusive recruitment strategies](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/vsa/accessibility/research/recruitment.md)

#### Preparing prototypes for assistive technology users
- Review [types of assitive technologies and how to modify your prototypes](https://depo-platform-documentation.scrollhelp.site/research-design/testing-your-prototype-with-assistive-technology-u)
- Consider [creating your prototype in CodePen](https://depo-platform-documentation.scrollhelp.site/research-design/accessible-prototyping-with-codepen) for the most accurate results

#### Research sessions
- Read VA's guide to [research with assistive technology users](https://depo-platform-documentation.scrollhelp.site/research-design/research-with-assistive-technology-users)
- Follow the [screen reader checklist](https://depo-platform-documentation.scrollhelp.site/research-design/screen-reader-checklist)
- Learn [how to be respectful of participants with disabilities](https://depo-platform-documentation.scrollhelp.site/research-design/disability-etiquette)


</details>

<details><summary>Designers</summary>

### Accessibility for designers

Creating visual designs with accessibility in mind will go a long way in making your end product accessible to all Veterans.

#### Apply accessibility best practices
- (WHAT SHOULD GO HERE? is there a good "here are the basics of visual accessible design" article we can point to?)

#### Use VA Design System components
Don't re-create the wheel! The [VA Design System ](https://design.va.gov/)(VADS) is here to help. VADS Components are well-documented and have been reviewed for accessibility issues. Whenever possible, default to using an existing component or pattern in your designs.
- [VA Design System components Sketch library](https://www.sketch.com/s/610156b6-f281-4497-81f3-64454fc72156/symbols)
- [VA Design System components Figma library](https://www.figma.com/file/afurtw4iqQe6y4gXfNfkkk/VADS-Component-Library?type=design&mode=design&t=Ld7dhuyaPcerrnPF-0)

#### Use accessibility annotations
A lot can be lost in translation when handing off your designs to a developer. Use accessibility annotations to make your intentions clear. It's especially important to annotate information that is semantically important, but not obvious on visual inspection:
- Heading levels (`H1`, `H2`, etc.)
- Anything that's using non-default styling (for example, an `H3` that's styled to look like an `H2`)
- Text that's only accessible via assistive technology - alt text, aria-labels (for example, an "Edit" link with the `aria-label` "Edit address")
- Focus management between pages or screens
- Tab/focus order
- Any elements requiring `aria`
- Alt text for images/icons
- `Legend` and `fieldset`, if you're creating a form

Use these kits to make your annotations:
- [VA Annotations Sketch library](https://www.sketch.com/s/aaa5c25f-6991-4aac-a6ed-d378bdff7727)
- [VA Annotations Figma library](https://www.figma.com/file/CZcnWfQOwtLqPm4WA5paYG/VADS-Annotation-Kit?type=design&node-id=415-1135&mode=design&t=Ld7dhuyaPcerrnPF-0)

#### Consider prototyping in CodePen
You'll eventually test with users of assistive technology (AT). In general, AT works best with coded prototypes. Before research begins, you should consider [creating your prototype in CodePen](https://depo-platform-documentation.scrollhelp.site/research-design/accessible-prototyping-with-codepen) for the most accurate research results.



</details>

<details><summary>Developers</summary></details>

<details><summary>Product Managers</summary></details>

`Maybe we can adapt this?` [GH page: Expectations Per Discipline](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/vsa/accessibility/expectations-per-discipline.md)


## Get help from accessibility specialists


There are two routes to access support from accessibility specialists:
1. During the Collaboration Cycle, from the Governance team
2. At any point in your product's lifecycle, from CAIA and other accessibility specialists


### Route 1: Collaboration Cycle support from Governance
Teams **creating new features or products** are required to go through the Collaboration Cycle, which includes accessibility reviews. The Collaboration Cycle is managed by the Governance team.
<details><summary>Learn about the Collaboration Cycle</summary>


 <br>The Collaboration Cycle, managed by the **Platform Governance** team, is where teams who are building products/features on VA.gov get feedback and guidance on their product/feature to ensure it meets VA.gov experience standards for design, content, information architecture, quality assurance, accessibility, and research. 
 
Teams engage with the Collaboration Cycle throughout their product’s/feature’s lifecycle via three separate touchpoint meetings (Design Intent, Midpoint Review and Staging).

[Learn how the Collaboration Cycle works](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/), and [contact the Governance team](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/contact-us) with your questions.

</details>

### Route 2: General accessiblity support from CAIA
Teams **at any point in the product/feature lifecycle** can get general accessibility support from the Sitewide Content, Accessibility, and Information Architecture (CAIA) team. They can also reach out to specialists on Slack.

⚠️**Note**: Any ticket(s) given, on either route, will drive your team towards a more accessible product.

<details><summary>Get help from CAIA and VA's accessibility specialists</summary>
 <br>

The **Sitewide Content, Accessibility, and Information Architecture (CAIA)** team is here support your accessibility needs, _no matter how far along you are in the product/feature lifecycle_. 

You can reach out to CAIA whether you're in the Collaboration Cycle or not.

#### How CAIA can help
- **Evaluate** your product at any stage - from wireframe to developed code - and provide feedback and recommendations
- **Provide** screen reader tech support and accessibility-focused observations during user research sessions with users of assistive technology
- **Answer** general questions about accessibility best practices

[Check out the menu of offerings that CAIA provides](https://github.com/department-of-veterans-affairs/va.gov-team/tree/2e5a0a08bd51ae3258de4c9f37754f907e938586/teams/CAIA/accessibility#services-we-offer)

#### Get started with CAIA 🎫
- To start working with CAIA, [submit a CAIA ticket](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/sitewide-content-and-ia-intake-request) 
- Contact the team on Slack via [#sitewide-content-accessibility-ia](https://dsva.slack.com/archives/C01K37HRUAH). 

#### Other ways to contact accessibility specialists
- **Embedded accessibility specialists:** Several product teams have embedded accessibility specialists.
    - If you're on one of those teams, reach out to your specialist for help and advice.
    - If your team does not have a dedicated a11y, please submit a ticket with CAIA for support.
- **Slack**: VA accessibility specialists are available on Slack the [#accessibility-help](https://dsva.slack.com/archives/C8E985R32) channel.
    - No worries if you don't know what exactly you need.
    - Ask your question and a specialist will help you as soon as possible.
- **Office Hours**: You can also reach CAIA by attending their weekly office hours.
    - As of 12/21/2023 Office Hours are on Tuesdays at 4 PM Eastern.
    - Join via [Zoom](https://coformaco.zoom.us/j/83992174780?pwd=Tk1jZ0o3MWxLcHFMWTM1S3ZrcytqUT09).
</details>


### How accessibility specialists provide feedback

Accessibility specialists may engage with you in Slack, leave comments on your Figma mockups, write up their findings, or create formal GitHub issue tickets.

<details><summary>Feedback from the CAIA team</summary>

#### Feedback from the CAIA team
Depending on the VFS team's needs, the content, accessibility, and information architecture CAIA workstreams will work together to review products.
  
  CAIA will adjust to your needs. Depending on the product and team in question, CAIA may opt to provide feedback in the team's Slack channel, or as comments in a mockup.

For more detailed, thorough reviews, CAIA accessibility specialists will write up their findings and add them to GitHub. They'll share a link to the findings with the team via Slack and any related GitHub issue tickets. 
- **Product reviews** include existing and potential accessibility issues, and proposed solutions. In general, this is [what CAIA looks for](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/shared-support/accessibility/documentation/how-we-audit.md) and [what tools CAIA uses](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/shared-support/accessibility/documentation/what-accessibility-tools-we-use.md) to audit a product.
- **User research findings** include accessibility issues found during testing, participant quotes, and research synthesis from the CAIA team.

Examples:
- [Design review deliverable](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/CAIA/accessibility/Deliverables/Benefits%20Disability%20Experience%20526EZ/202312-design-review.md)
- [Midpoint review deliverable](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/CAIA/accessibility/Deliverables/Benefits%20Representation%20Management/2023Nov-accreditedRepAppointWidget-midpointReview.md)
- [User research findings](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/CAIA/accessibility/Deliverables/Core%20Identity%20Team/2023-Aug-accessibility-findings-Identity-Core.md)
</details>

<details><summary>Collaboration Cycle tickets</summary>

#### Collaboration Cycle tickets

During a Collaboration Cycle Staging Review, accessibility specialists will review your product. If they find any accessibility issues, they’ll write a ticket for each issue that outlines:
- The issue (often with screenshots or video examples)
- A proposed solution
- The [VA experience standard](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/VA.gov-experience-standards.1683980311.html) related to the issue
- The [defect severity level](https://depo-platform-documentation.scrollhelp.site/developer-docs/Accessibility-defect-severity-rubric.1906671954.html)

Learn more about [Staging Review Issue tickets](https://depo-platform-documentation.scrollhelp.site/collaboration-cycle/anatomy-of-a-staging-review-issue-ticket).
</details>

<details><summary>Writing your own tickets</summary>

#### Writing your own tickets

If you’re reviewing your product for accessibility issues, you can write your own tickets to keep track of your findings and close them upon completion. 

[Learn how to write good accessibility tickets](https://github.com/department-of-veterans-affairs/va.gov-team/blob/master/teams/shared-support/accessibility/documentation/how-to-write-good-accessibility-tickets.md). And here are [tickets for common accessibility issues](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/platform/accessibility/common-issues) to help you get started.

</details>

## Ensure that your work is Section 508 compliant

The VA Section 508 Office validates compliance with federal law mandating accessible information and communication technology. 
- Product teams are **required** to submit a VA 508 Office Audit Request **before launch**.
- The Section 508 Office can also **review your documents** (PDF, DOCX) for accessibility issues.

Learn how to [request support from the VA 508 office](https://depo-platform-documentation.scrollhelp.site/developer-docs/request-support-from-the-va-508-office).

## Improve your skills
<details><summary>Join a community</summary>

### A11y Champs
Accessibility Champtions ("a11y champs") is a grassroots, volunteer-led educational program. Anyone working at the VA, with access to the DSVA slack channel, can become an accessibility champion through this curriculum! [Start your A11y Champs journey.](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/teams/vsa/accessibility/a11y-champs)

### VA Trauma Community
Rhe VA trauma community is a grassroots, volunteer led multi-disciplinary community focused on maturing our approach to trauma from facilitating research to caring for practitioners. [Learn more about the Trauma Community.](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/teams/shared-support/trauma)

</details>
<details><summary>Learn more about accessibility</summary>

### Cognitive issues / Traumatic Brain Injury (TBI)
- [Cognitive considerations](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/teams/vsa/accessibility/learning-sessions/abc03-cognitive-considerations)
- How to design for Veterans with [Traumatic Brain Injuries](https://vfs.atlassian.net/wiki/spaces/ACP/pages/2177892586/Traumatic+Brain+Injury+TBI)

### Technical considerations
- [Buttons vs links](https://docs.google.com/presentation/d/1hv7kENiPuXGcZDwQSM5hItnbyXezu4nY9lFksMQpSK4/edit#slide=id.ge8045de9aa_0_0)
- [Focus management](https://docs.google.com/presentation/d/1XSy61Hhh3SFic_3fS_DotQ_QfPbTEKeuVIE7gH2O4aI/edit#slide=id.g100cc953fd1_0_0) and [focus tracking](https://vfs.atlassian.net/wiki/spaces/ACP/pages/2206531715/Focus+Tracking) `these might be too duplicative??`
- [Headings](https://docs.google.com/presentation/d/1iYnPVPYzPsESY2miDtNhg3aEtve9IEnr8_TuEevInZA/edit?usp=sharing)
- [Links](https://docs.google.com/presentation/d/14AwUoFOg_Ix1Txl9oePtPD1ntOpylBWwBJMYq9f5vmo/edit?usp=sharing)
- [Live regions](https://docs.google.com/presentation/d/1-r6xRByAcqF4AiHTh6ffZ7GmoWZevjiwkjjcLp3K52k/edit?usp=sharing)

### Assistive technology
- [Getting started with keyboard navigation and screen readers](https://github.com/department-of-veterans-affairs/va.gov-team/tree/master/teams/vsa/accessibility/learning-sessions/abc02-getting-started-with-keyboard-navigation-and-screen-readers)
- [Testing with assistive technology users](https://depo-platform-documentation.scrollhelp.site/research-design/testing-your-prototype-with-assistive-technology-u)
</details>
