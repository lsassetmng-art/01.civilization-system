# ============================================================
# DEVELOPMENT PROGRESS RECORD MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines tracked project progress for this one application.

definition:
development_progress_record represents one progress-tracked unit
within the application’s own delivery workflow.

minimum_fields:
- development_progress_record_id
- progress_category
- target_artifact
- target_module
- phase
- status
- completion_rate
- assignee
- planned_start
- planned_end
- actual_start
- actual_end
- related_version
- related_bug_count
- notes
- created_at
- updated_at

progress_category_examples:
- design
- code
- sql
- unit_test
- integration_test_sheet
- bug_fix
- git
- release

status_examples:
- not_started
- in_progress
- completed
- blocked
- on_hold

notes:
This enables progress tracking without needing another external tool.
