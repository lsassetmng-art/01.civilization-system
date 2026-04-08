# ============================================================
# TEST ITEM SHEET MODEL
# ============================================================

status: canonical-draft
layer: model
application: App Development Studio

purpose:
Defines a generated test item sheet for integration-and-beyond testing.

definition:
test_item_sheet represents a structured collection of manually executable
or manually reviewable test items derived from design and implementation context.

minimum_fields:
- test_item_sheet_id
- request_id
- target_version
- test_phase
- sheet_title
- sheet_language
- generated_from_scope
- item_count
- status
- created_at
- updated_at

test_phase_examples:
- integration
- system
- acceptance
- regression
- release_readiness

status_examples:
- generated
- reviewed
- updated
- in_use
- archived

relations:
- links to test_item
- links to bug_test_link
- links to test_progress_record

notes:
This is different from auto-generated Java unit test code.
