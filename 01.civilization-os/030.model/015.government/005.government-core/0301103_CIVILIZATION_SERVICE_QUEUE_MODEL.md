# ============================================================
# CIVILIZATION SERVICE QUEUE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical service queue model.

model_type:
- operational queue model

primary_key:
- service_queue_id

natural_key:
- queue_scope
- queue_code

fields:
- service_queue_id
- queue_scope
- queue_code
- queue_status
- queue_priority
- pending_item_count
- last_enqueued_at
- last_processed_at
- created_at
- updated_at

queue_status_enum:
- active
- paused
- blocked
- draining
- archived

truth_boundary:
Service queue state is operational service-delivery control state.
