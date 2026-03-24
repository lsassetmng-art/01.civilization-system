# ============================================================
# CIVILIZATION SUSTAINABILITY QUOTA MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical sustainability quota model.

model_type:
- environmental limit truth model

primary_key:
- sustainability_quota_id

natural_key:
- quota_scope
- quota_code
- quota_version

fields:
- sustainability_quota_id
- quota_scope
- quota_code
- quota_version
- quota_status
- quota_type
- allowed_value
- measurement_unit
- effective_from
- effective_until
- created_at
- updated_at

quota_status_enum:
- active
- constrained
- exhausted
- superseded
- revoked
- expired
- archived

contract_version_rule:
Sustainability quotas must expose explicit version semantics.

truth_boundary:
Sustainability-quota truth belongs to CivilizationOS environment-circularity domain.
