# ============================================================
# CIVILIZATION DEATH RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical death record model.

model_type:
- vital record truth model

primary_key:
- death_record_id

natural_key:
- death_scope
- death_ref

fields:
- death_record_id
- death_scope
- death_ref
- death_status
- deceased_identity_scope
- cause_summary
- source_state_version
- correlation_id
- occurred_at
- created_at
- updated_at

death_status_enum:
- registered
- revised
- invalidated
- archived

truth_boundary:
Death record truth belongs to CivilizationOS civil-status domain.
