# ============================================================
# CIVILIZATION TRANSPORT MOVEMENT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical transport movement record model.

model_type:
- transport operations model

primary_key:
- transport_movement_record_id

natural_key:
- movement_ref
- corridor_code

fields:
- transport_movement_record_id
- movement_ref
- corridor_code
- movement_status
- movement_scope
- payload_summary
- payload_hash
- source_state_version
- correlation_id
- moved_at
- created_at
- updated_at

movement_status_enum:
- pending
- active
- completed
- failed
- reversed
- cancelled

idempotency_rule:
movement_ref + corridor_code must suppress duplicate effective movement.

truth_boundary:
Transport movement truth belongs to CivilizationOS transport operations.
