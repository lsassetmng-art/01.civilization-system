# ============================================================
# CIVILIZATION MONETARY RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical monetary rule model.

model_type:
- finance normative model

primary_key:
- monetary_rule_id

natural_key:
- currency_code
- rule_code
- rule_version

fields:
- monetary_rule_id
- currency_code
- rule_code
- rule_version
- rule_status
- rule_scope
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
Monetary rule truth belongs to CivilizationOS finance governance domain.
