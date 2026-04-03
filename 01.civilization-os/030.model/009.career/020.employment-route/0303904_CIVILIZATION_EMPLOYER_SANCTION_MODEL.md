# ============================================================
# CIVILIZATION EMPLOYER SANCTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical employer sanction model.

model_type:
- labor sanction truth model

primary_key:
- employer_sanction_id

natural_key:
- sanction_scope
- sanction_code
- sanction_version

fields:
- employer_sanction_id
- sanction_scope
- sanction_code
- sanction_version
- sanction_status
- employer_scope
- sanction_summary
- approval_basis
- effective_from
- effective_until
- created_at
- updated_at

sanction_status_enum:
- draft
- approved
- active
- fulfilled
- revoked
- archived

contract_version_rule:
Employer sanctions must expose explicit version semantics.

truth_boundary:
Employer-sanction truth belongs to CivilizationOS labor-administration domain.
