# ============================================================
# TEST MANUAL UPDATE RECORD MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines manual user edits made to test progress or test result data.

definition:
test_manual_update_record records a user-driven change
to test execution status, result, assignee, date, or related notes.

minimum_fields:
- test_manual_update_record_id
- test_progress_record_id
- changed_field
- previous_value
- new_value
- change_reason
- changed_by
- changed_at
- created_at
- updated_at

notes:
Manual correction is supported and must remain traceable.
