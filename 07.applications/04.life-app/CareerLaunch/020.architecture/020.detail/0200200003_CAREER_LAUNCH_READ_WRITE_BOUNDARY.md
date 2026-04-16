# CareerLaunch READ WRITE BOUNDARY
## Write paths
- profile edit writes life.career_profile*
- job paste writes life.job_posting_paste
- application creation writes life.application_company / life.application_position
- document edit writes life.document_asset / life.document_revision
- interview prep writes life.interview_plan / question / answer note
- thank-you flow writes life.thank_you_message

## Read paths
- dashboard aggregates active applications, upcoming interviews, pending thank-you actions
- export reads only frozen document revision snapshot
- advisor_viewer reads shared snapshots only
