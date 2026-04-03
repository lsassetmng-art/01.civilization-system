# ============================================================
# CIVILIZATION NATIONALITY GRANT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical nationality grant model.

model_type:
- civil status transition truth model

primary_key:
- nationality_grant_id

natural_key:
- grant_scope
- grant_code
- grant_version

fields:
- nationality_grant_id
- grant_scope
- grant_code
- grant_version
- grant_status
- holder_scope
- granting_scope
- grant_basis
- effective_from
- effective_until
- created_at
- updated_at

grant_status_enum:
- draft
- approved
- active
- revoked
- expired
- archived

contract_version_rule:
Nationality grants must expose explicit version semantics.

truth_boundary:
Nationality-grant truth belongs to CivilizationOS migration-nationality domain.
