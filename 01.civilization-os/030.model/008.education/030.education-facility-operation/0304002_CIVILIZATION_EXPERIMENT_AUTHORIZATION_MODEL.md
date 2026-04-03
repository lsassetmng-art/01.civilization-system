# ============================================================
# CIVILIZATION EXPERIMENT AUTHORIZATION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical experiment authorization model.

model_type:
- experiment permission truth model

primary_key:
- experiment_authorization_id

natural_key:
- authorization_scope
- authorization_code
- authorization_version

fields:
- experiment_authorization_id
- authorization_scope
- authorization_code
- authorization_version
- authorization_status
- project_scope
- authorization_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

authorization_status_enum:
- draft
- approved
- active
- suspended
- revoked
- archived

contract_version_rule:
Experiment authorizations must expose explicit version semantics.

truth_boundary:
Experiment-authorization truth belongs to CivilizationOS research-integrity domain.
