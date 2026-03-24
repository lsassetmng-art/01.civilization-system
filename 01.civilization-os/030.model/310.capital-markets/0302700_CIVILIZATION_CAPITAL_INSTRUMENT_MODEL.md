# ============================================================
# CIVILIZATION CAPITAL INSTRUMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical capital instrument model.

model_type:
- capital truth model

primary_key:
- capital_instrument_id

natural_key:
- instrument_scope
- instrument_code
- instrument_version

fields:
- capital_instrument_id
- instrument_scope
- instrument_code
- instrument_version
- instrument_status
- instrument_type
- issuer_scope
- instrument_terms_summary
- effective_from
- effective_until
- created_at
- updated_at

instrument_status_enum:
- draft
- approved
- active
- superseded
- redeemed
- revoked
- archived

contract_version_rule:
Capital instruments must expose explicit version semantics.

truth_boundary:
Capital-instrument truth belongs to CivilizationOS capital-markets domain.
