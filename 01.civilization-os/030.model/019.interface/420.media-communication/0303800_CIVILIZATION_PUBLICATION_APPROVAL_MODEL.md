# ============================================================
# CIVILIZATION PUBLICATION APPROVAL MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical publication approval model.

model_type:
- media publication truth model

primary_key:
- publication_approval_id

natural_key:
- approval_scope
- approval_code
- approval_version

fields:
- publication_approval_id
- approval_scope
- approval_code
- approval_version
- approval_status
- publisher_scope
- publication_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

approval_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

contract_version_rule:
Publication approvals must expose explicit version semantics.

truth_boundary:
Publication-approval truth belongs to CivilizationOS media-communication domain.
