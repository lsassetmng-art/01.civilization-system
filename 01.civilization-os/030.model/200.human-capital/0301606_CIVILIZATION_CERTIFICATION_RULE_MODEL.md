# ============================================================
# CIVILIZATION CERTIFICATION RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical certification rule model.

model_type:
- qualification rule model

primary_key:
- certification_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- certification_rule_id
- rule_scope
- rule_code
- rule_version
- rule_status
- rule_body
- effective_from
- effective_until
- created_at
- updated_at

rule_status_enum:
- active
- superseded
- revoked
- expired

contract_version_rule:
Certification rules must expose explicit version semantics.

truth_boundary:
Certification rule truth belongs to CivilizationOS human-capital governance domain.
