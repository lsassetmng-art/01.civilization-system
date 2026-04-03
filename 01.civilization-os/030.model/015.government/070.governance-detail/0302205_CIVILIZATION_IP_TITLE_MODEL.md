# ============================================================
# CIVILIZATION IP TITLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical intellectual property title model.

model_type:
- rights truth model

primary_key:
- ip_title_id

natural_key:
- ip_scope
- ip_code
- ip_version

fields:
- ip_title_id
- ip_scope
- ip_code
- ip_version
- ip_status
- rights_holder_scope
- protected_subject_scope
- effective_from
- effective_until
- created_at
- updated_at

ip_status_enum:
- draft
- granted
- active
- suspended
- revoked
- expired
- archived

contract_version_rule:
IP titles must expose explicit version semantics.

truth_boundary:
IP-title truth belongs to CivilizationOS technology-governance domain.
