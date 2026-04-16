# ============================================================
# PROJECT FLOW SYNC STATUS SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
sync_status

purpose:
Shows import/export/retry status and errors.

main_components:
- sync request list
- status summary cards
- error detail panel
- retry action
- filter area

key_columns:
- sync_request_id
- sync_direction
- sync_type
- target_project_id
- status
- retryable
- requested_at
- finished_at
- error_code

actions:
- open sync detail
- retry selected request
- export sync result list

visual_rules:
- failed and partially_failed must be visually prominent
- retryable state must be obvious
