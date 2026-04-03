# ============================================================
# CIVILIZATION RESIDENT REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical resident registry model.

model_type:
- registry truth model

primary_key:
- resident_registry_id

natural_key:
- nation_id
- resident_code

fields:
- resident_registry_id
- nation_id
- resident_code
- resident_status
- resident_name
- resident_classification
- home_territory_code
- governing_authority_scope
- created_at
- updated_at

resident_status_enum:
- active
- inactive
- suspended
- archived

truth_boundary:
Resident registry truth belongs to CivilizationOS public administration domain.
