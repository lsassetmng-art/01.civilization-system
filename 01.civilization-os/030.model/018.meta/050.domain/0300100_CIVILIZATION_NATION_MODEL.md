# ============================================================
# CIVILIZATION NATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical nation model.

model_type:
- domain truth model

primary_key:
- nation_id

natural_key:
- nation_code

fields:
- nation_id
- nation_code
- nation_name
- nation_status
- constitution_version
- legal_system_type
- currency_code
- policy_profile
- created_at
- updated_at

nation_status_enum:
- active
- suspended
- dissolved
- archived

truth_boundary:
Nation truth belongs to CivilizationOS canonical domain.

versioning_rule:
constitution_version must indicate the currently governing constitutional basis.
