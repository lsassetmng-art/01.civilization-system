# ============================================================
# CIVILIZATION GOVERNANCE REVIEW QUEUE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical governance review queue model.

model_type:
- governance queue model

primary_key:
- governance_review_queue_id

natural_key:
- review_scope
- review_key

fields:
- governance_review_queue_id
- review_scope
- review_key
- queue_status
- review_priority
- pending_item_count
- last_reviewed_at
- created_at
- updated_at

queue_status_enum:
- active
- paused
- blocked
- archived

truth_boundary:
Review queue state is operational governance control state.
