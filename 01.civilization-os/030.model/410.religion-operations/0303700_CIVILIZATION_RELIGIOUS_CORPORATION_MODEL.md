# ============================================================
# CIVILIZATION RELIGIOUS CORPORATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical religious corporation model.

model_type:
- faith organization truth model

primary_key:
- religious_corporation_id

natural_key:
- corporation_scope
- corporation_code
- corporation_version

fields:
- religious_corporation_id
- corporation_scope
- corporation_code
- corporation_version
- corporation_status
- faith_scope
- governance_summary
- effective_from
- effective_until
- created_at
- updated_at

corporation_status_enum:
- draft
- approved
- active
- suspended
- dissolved
- archived

contract_version_rule:
Religious corporations must expose explicit version semantics.

truth_boundary:
Religious-corporation truth belongs to CivilizationOS religion-operations domain.
