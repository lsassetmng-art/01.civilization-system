# ============================================================
# CIVILIZATION VOTER REGISTRY MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical voter registry model.

model_type:
- governance registry model

primary_key:
- voter_registry_id

natural_key:
- nation_id
- voter_code

fields:
- voter_registry_id
- nation_id
- voter_code
- voter_status
- eligibility_basis
- territory_code
- created_at
- updated_at

voter_status_enum:
- eligible
- suspended
- revoked
- archived

truth_boundary:
Voter registry truth belongs to CivilizationOS governance domain.
