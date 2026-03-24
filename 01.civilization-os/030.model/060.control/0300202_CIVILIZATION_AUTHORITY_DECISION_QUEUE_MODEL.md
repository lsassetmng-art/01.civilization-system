# ============================================================
# CIVILIZATION AUTHORITY DECISION QUEUE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical authority decision queue model.

model_type:
- governance queue model

primary_key:
- authority_decision_queue_id

natural_key:
- queue_scope
- queue_key

fields:
- authority_decision_queue_id
- queue_scope
- queue_key
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
Queue state is operational governance control state.
