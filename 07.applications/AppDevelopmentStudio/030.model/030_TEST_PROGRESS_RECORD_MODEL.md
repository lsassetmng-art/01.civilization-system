# ============================================================
# TEST PROGRESS RECORD MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines tracked progress for test execution items.

definition:
test_progress_record represents execution status and result state
for one test item or one grouped test target.

minimum_fields:
- test_progress_record_id
- test_item_id
- test_phase
- target_function
- target_screen
- assignee
- execution_status
- result_status
- priority
- planned_date
- executed_date
- retest_required
- related_bug_id
- manual_override_enabled
- notes
- created_at
- updated_at

execution_status_examples:
- not_started
- in_progress
- done
- blocked
- on_hold

result_status_examples:
- not_run
- pass
- fail
- retest_needed
- skipped

notes:
Test results and progress may be manually edited by users.
