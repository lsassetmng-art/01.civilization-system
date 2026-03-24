# ============================================================
# LIFE PROFILE MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life profile model.

model_type:
- life profile truth model

primary_key:
- life_profile_id

natural_key:
- life_scope
- profile_code
- profile_version

fields:
- life_profile_id
- life_scope
- profile_code
- profile_version
- profile_status
- owner_scope
- lifestyle_summary
- effective_from
- effective_until
- created_at
- updated_at

profile_status_enum:
- draft
- approved
- active
- revised
- archived

contract_version_rule:
Life profiles must expose explicit version semantics.

truth_boundary:
Life profile truth belongs to LifeOS life-core domain.
