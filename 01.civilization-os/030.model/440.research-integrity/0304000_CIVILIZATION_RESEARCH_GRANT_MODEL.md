# ============================================================
# CIVILIZATION RESEARCH GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical research grant model.

model_type:
- research funding truth model

primary_key:
- research_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- research_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- recipient_scope
- grant_objective
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- suspended
- completed
- archived

contract_version_rule:
Research grants must expose explicit version semantics.

truth_boundary:
Research-grant truth belongs to CivilizationOS research-integrity domain.
