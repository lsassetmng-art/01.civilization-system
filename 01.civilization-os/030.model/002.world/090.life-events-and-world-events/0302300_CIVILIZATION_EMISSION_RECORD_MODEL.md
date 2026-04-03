# ============================================================
# CIVILIZATION EMISSION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical emission record model.

model_type:
- environmental operations truth model

primary_key:
- emission_record_id

natural_key:
- emission_scope
- emission_ref
- source_state_version

fields:
- emission_record_id
- emission_scope
- emission_ref
- emission_status
- emission_type
- measured_value
- measurement_unit
- source_lineage
- source_state_version
- measured_at
- created_at
- updated_at

emission_status_enum:
- recorded
- revised
- invalidated
- archived

truth_boundary:
Emission-record truth belongs to CivilizationOS environment-circularity domain.
