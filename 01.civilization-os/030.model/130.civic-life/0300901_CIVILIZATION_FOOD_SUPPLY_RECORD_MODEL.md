# ============================================================
# CIVILIZATION FOOD SUPPLY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical food supply record model.

model_type:
- supply truth model

primary_key:
- food_supply_record_id

natural_key:
- supply_scope
- supply_ref

fields:
- food_supply_record_id
- supply_scope
- supply_ref
- supply_status
- food_code
- supplied_quantity
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

truth_boundary:
Food supply truth belongs to CivilizationOS civic-life domain.
