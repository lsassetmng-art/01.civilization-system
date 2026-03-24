# ============================================================
# CIVILIZATION CAPITAL COMMITMENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical capital commitment model.

model_type:
- capital commitment truth model

primary_key:
- capital_commitment_id

natural_key:
- commitment_scope
- commitment_ref
- investor_scope

fields:
- capital_commitment_id
- commitment_scope
- commitment_ref
- investor_scope
- commitment_status
- target_fund_code
- committed_value
- funded_value
- source_state_version
- created_at
- updated_at

commitment_status_enum:
- proposed
- accepted
- active
- fulfilled
- defaulted
- cancelled
- archived

truth_boundary:
Capital-commitment truth belongs to CivilizationOS capital-markets domain.
