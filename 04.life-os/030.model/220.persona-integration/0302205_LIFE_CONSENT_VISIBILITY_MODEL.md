# ============================================================
# LIFE CONSENT VISIBILITY MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical life consent and visibility model.

model_type:
- privacy boundary truth model

primary_key:
- life_consent_visibility_id

natural_key:
- consent_scope
- consent_code
- consent_version

fields:
- life_consent_visibility_id
- consent_scope
- consent_code
- consent_version
- consent_status
- owner_scope
- visibility_summary
- consent_summary
- effective_from
- effective_until
- created_at
- updated_at

consent_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Life consent visibility records must expose explicit version semantics.

truth_boundary:
Life consent visibility truth belongs to LifeOS persona-integration domain.
