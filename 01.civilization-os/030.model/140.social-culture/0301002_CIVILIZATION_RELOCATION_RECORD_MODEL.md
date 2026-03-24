# ============================================================
# CIVILIZATION RELOCATION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical relocation record model.

model_type:
- civic movement truth model

primary_key:
- relocation_record_id

natural_key:
- relocation_ref
- source_territory_code
- target_territory_code

fields:
- relocation_record_id
- relocation_ref
- source_territory_code
- target_territory_code
- relocation_status
- relocation_type
- relocated_population_value
- source_state_version
- correlation_id
- moved_at
- created_at
- updated_at

relocation_status_enum:
- pending
- approved
- completed
- rejected
- reversed
- archived

truth_boundary:
Relocation truth belongs to CivilizationOS civic movement domain.
