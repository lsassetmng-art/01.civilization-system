# ============================================================
# CIVILIZATION WATER SUPPLY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical water supply record model.

model_type:
- supply truth model

primary_key:
- water_supply_record_id

natural_key:
- supply_scope
- supply_ref

fields:
- water_supply_record_id
- supply_scope
- supply_ref
- supply_status
- distributed_value
- quality_status
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

supply_status_enum:
- current
- constrained
- disrupted
- restored
- archived

quality_status_enum:
- safe
- limited
- unsafe

truth_boundary:
Water supply truth belongs to CivilizationOS civic-life domain.
