# ============================================================
# PROJECT SYNC REQUEST MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_request_id
- sync_direction
- sync_type
- target_project_id
- status
- requested_by
- requested_at
- executed_at
- retry_count
- error_code
- error_message
