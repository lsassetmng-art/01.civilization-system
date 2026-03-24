# ============================================================
# LIFE IDENTITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life identity model.

model_type:
- life identity truth model

primary_key:
- life_identity_id

natural_key:
- life_scope
- life_code
- identity_version

fields:
- life_identity_id
- life_scope
- life_code
- identity_version
- identity_status
- owner_scope
- profile_summary
- effective_from
- effective_until
- created_at
- updated_at

identity_status_enum:
- draft
- approved
- active
- suspended
- archived

contract_version_rule:
Life identities must expose explicit version semantics.

truth_boundary:
Life identity truth belongs to LifeOS life-core domain.
