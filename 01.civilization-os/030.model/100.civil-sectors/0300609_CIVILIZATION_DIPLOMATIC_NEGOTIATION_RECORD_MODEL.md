# ============================================================
# CIVILIZATION DIPLOMATIC NEGOTIATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical diplomatic negotiation record model.

model_type:
- diplomatic operational truth model

primary_key:
- diplomatic_negotiation_record_id

natural_key:
- negotiation_scope
- negotiation_ref
- correlation_id

fields:
- diplomatic_negotiation_record_id
- negotiation_scope
- negotiation_ref
- negotiation_status
- source_channel_id
- negotiation_summary
- source_state_version
- correlation_id
- causation_id
- opened_at
- closed_at
- created_at
- updated_at

negotiation_status_enum:
- opened
- active
- agreed
- failed
- suspended
- closed

truth_boundary:
Diplomatic negotiation record truth belongs to CivilizationOS diplomatic operations.
