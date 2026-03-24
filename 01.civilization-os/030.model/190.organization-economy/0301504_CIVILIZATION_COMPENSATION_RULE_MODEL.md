# ============================================================
# CIVILIZATION COMPENSATION RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical compensation rule model.

model_type:
- compensation normative model

primary_key:
- compensation_rule_id

natural_key:
- rule_scope
- rule_code
- rule_version

fields:
- compensation_rule_id
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

truth_boundary:
Compensation rule truth belongs to CivilizationOS organization-economy domain.
