# ============================================================
# CIVILIZATION LAW RULE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical law rule model.

model_type:
- normative truth model

primary_key:
- law_rule_id

natural_key:
- law_code
- law_version

fields:
- law_rule_id
- law_code
- law_version
- law_name
- law_status
- rule_scope
- rule_body
- compatibility_status
- effective_from
- effective_until
- created_at
- updated_at

law_status_enum:
- active
- superseded
- revoked
- expired

compatibility_status_enum:
- compatible
- limited
- incompatible

truth_boundary:
Law rule truth belongs to CivilizationOS canonical normative layer.
