# ============================================================
# BUG RECORD MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a tracked bug item in the internal bug list.

definition:
bug_record represents one defect, issue, or bug managed by the application.

minimum_fields:
- bug_id
- title
- summary
- detail
- status
- priority
- severity
- reported_by
- reported_at
- detected_phase
- affected_module
- affected_function
- reproduction_steps
- expected_result
- actual_result
- root_cause
- fix_policy
- fix_owner
- fix_version
- related_design_version
- related_code_version
- related_git_branch
- related_commit
- verification_result
- closed_at
- notes

status_examples:
- new
- triaged
- investigating
- fixing
- fixed
- retesting
- closed
- reopened
- rejected

priority_examples:
- low
- medium
- high
- critical

severity_examples:
- minor
- major
- serious
- blocker

notes:
Bug records should link to artifacts, fixes, and retest history.
