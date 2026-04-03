# ============================================================
# CIVILIZATION DEFENSE UNIT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical defense unit model.

model_type:
- security truth model

primary_key:
- defense_unit_id

natural_key:
- nation_id
- defense_unit_code

fields:
- defense_unit_id
- nation_id
- defense_unit_code
- defense_unit_status
- defense_unit_class
- territory_scope
- command_scope
- created_at
- updated_at

defense_unit_status_enum:
- active
- reserved
- deployed
- impaired
- dissolved
- archived

truth_boundary:
Defense unit truth belongs to CivilizationOS security domain.
