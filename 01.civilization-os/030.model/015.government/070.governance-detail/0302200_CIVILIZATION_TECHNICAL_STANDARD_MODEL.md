# ============================================================
# CIVILIZATION TECHNICAL STANDARD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical technical standard model.

model_type:
- normative technical truth model

primary_key:
- technical_standard_id

natural_key:
- standard_scope
- standard_code
- standard_version

fields:
- technical_standard_id
- standard_scope
- standard_code
- standard_version
- standard_status
- standard_class
- standard_body
- effective_from
- effective_until
- created_at
- updated_at

standard_status_enum:
- draft
- approved
- active
- superseded
- revoked
- expired
- archived

contract_version_rule:
Technical standards must expose explicit version semantics.

truth_boundary:
Technical-standard truth belongs to CivilizationOS technology-governance domain.
