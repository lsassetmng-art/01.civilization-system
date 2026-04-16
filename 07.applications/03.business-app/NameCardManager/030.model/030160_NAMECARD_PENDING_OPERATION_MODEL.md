# ============================================================
# NAMECARD PENDING OPERATION MODEL
# ============================================================

status: draft
layer: model
system: applications
application: NameCardManager
model: namecard_pending_operation
owner: Boss
prepared_by: Zero

purpose:
Stores offline operations until they can be applied to BusinessOS.

fields:
- pending_operation_id
- local_device_id
- namecard_id
- operation_type
- operation_payload
- queued_at
- replay_status
- replayed_at
- last_error
