# ============================================================
# CIVILIZATION ORGANIZATION REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical organization registry model.

model_type:
- registry truth model

primary_key:
- organization_registry_id

natural_key:
- organization_scope
- organization_code

fields:
- organization_registry_id
- organization_scope
- organization_code
- organization_status
- organization_name
- organization_class
- owner_scope
- created_at
- updated_at

organization_status_enum:
- active
- suspended
- dissolved
- archived

truth_boundary:
Organization registry truth belongs to CivilizationOS organization-economy domain.
