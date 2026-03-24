# ============================================================
# CIVILIZATION MEDICATION SUPPLY RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical medication supply record model.

model_type:
- medical supply truth model

primary_key:
- medication_supply_record_id

natural_key:
- supply_scope
- supply_ref

fields:
- medication_supply_record_id
- supply_scope
- supply_ref
- supply_status
- medication_code
- supplied_quantity
- source_lineage
- source_state_version
- recorded_at
- created_at
- updated_at

supply_status_enum:
- current
- constrained
- depleted
- replenished
- archived

truth_boundary:
Medication-supply truth belongs to CivilizationOS healthcare-publichealth domain.
