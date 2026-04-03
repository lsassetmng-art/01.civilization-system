# ============================================================
# CIVILIZATION BORDER SURVEILLANCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical border surveillance record model.

model_type:
- border monitoring truth model

primary_key:
- border_surveillance_record_id

natural_key:
- surveillance_scope
- surveillance_ref
- correlation_id

fields:
- border_surveillance_record_id
- surveillance_scope
- surveillance_ref
- surveillance_status
- border_target_scope
- alert_level
- source_state_version
- correlation_id
- observed_at
- created_at
- updated_at

surveillance_status_enum:
- normal
- elevated
- breach_detected
- contained
- archived

truth_boundary:
Border-surveillance truth belongs to CivilizationOS security-enforcement domain.
