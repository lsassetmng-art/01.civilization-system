# ============================================================
# SYNC STATE MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
model: sync_state
owner: Boss
prepared_by: Zero

purpose:
Represents local/cloud/enterprise synchronization state.

states:
- local_only
- pending_sync
- synced
- sync_failed
- pending_submission
- submitted
- submission_failed

fields:
- sync_state_id
- target_type_code
- target_id
- state_code
- last_attempt_at
- last_success_at
- last_error_code
- last_error_message
