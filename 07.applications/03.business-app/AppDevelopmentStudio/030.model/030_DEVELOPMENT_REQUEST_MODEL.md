# ============================================================
# DEVELOPMENT REQUEST MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines the root request unit handled by App Development Studio.

definition:
development_request represents one user-originated development intent.

minimum_fields:
- request_id
- request_title
- request_summary
- input_mode
- generation_mode
- target_project_id
- target_environment_id
- target_language_ids
- rule_profile_id
- review_mode
- approval_mode
- build_mode
- git_mode
- status
- created_by
- created_at
- updated_at

status_examples:
- created
- parsed
- assessed
- generating
- retained
- approved
- applying
- completed
- blocked
- failed

relations:
- links to generation_readiness_assessment
- links to proposal
- links to audit_run
- links to development_progress_record

notes:
This is the root orchestration model for most execution flows.
