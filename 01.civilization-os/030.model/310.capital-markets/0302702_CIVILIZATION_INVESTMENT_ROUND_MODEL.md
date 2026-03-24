# ============================================================
# CIVILIZATION INVESTMENT ROUND MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical investment round model.

model_type:
- capital raise truth model

primary_key:
- investment_round_id

natural_key:
- round_scope
- round_code
- round_version

fields:
- investment_round_id
- round_scope
- round_code
- round_version
- round_status
- issuer_scope
- target_raise_value
- raised_value
- pricing_summary
- effective_from
- effective_until
- created_at
- updated_at

round_status_enum:
- draft
- open
- closed
- failed
- cancelled
- archived

contract_version_rule:
Investment rounds must expose explicit version semantics.

truth_boundary:
Investment-round truth belongs to CivilizationOS capital-markets domain.
