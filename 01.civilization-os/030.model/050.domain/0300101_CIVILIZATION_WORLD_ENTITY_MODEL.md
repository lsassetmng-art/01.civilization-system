# ============================================================
# CIVILIZATION WORLD ENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical world entity model.

model_type:
- domain truth model

primary_key:
- world_entity_id

natural_key:
- world_entity_domain
- world_entity_code

fields:
- world_entity_id
- world_entity_domain
- world_entity_code
- world_entity_name
- world_entity_status
- owner_nation_id
- owner_domain
- created_at
- updated_at

world_entity_status_enum:
- active
- inactive
- destroyed
- archived

truth_boundary:
World entity truth is canonical in CivilizationOS unless explicitly delegated.
