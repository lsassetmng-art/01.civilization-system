# ============================================================
# CIVILIZATION SANCTIONS SCREENING MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sanctions screening model.

model_type:
- trade compliance truth model

primary_key:
- sanctions_screening_id

natural_key:
- screening_scope
- screening_ref
- correlation_id

fields:
- sanctions_screening_id
- screening_scope
- screening_ref
- screening_status
- target_scope
- screening_result
- source_state_version
- correlation_id
- screened_at
- created_at
- updated_at

screening_status_enum:
- pending
- cleared
- blocked
- escalated
- superseded
- archived

truth_boundary:
Sanctions-screening truth belongs to CivilizationOS external-trade-aid domain.
