# ============================================================
# PROJECT SYNC LOG MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- sync_log_id
- sync_request_id
- target_entity_type
- target_entity_id
- field_name
- previous_value_snapshot
- next_value_snapshot
- result_status
- created_at
