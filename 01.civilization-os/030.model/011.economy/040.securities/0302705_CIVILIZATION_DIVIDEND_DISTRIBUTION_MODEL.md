# ============================================================
# CIVILIZATION DIVIDEND DISTRIBUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical dividend distribution model.

model_type:
- capital payout truth model

primary_key:
- dividend_distribution_id

natural_key:
- distribution_scope
- distribution_ref
- source_instrument_code

fields:
- dividend_distribution_id
- distribution_scope
- distribution_ref
- source_instrument_code
- distribution_status
- total_distribution_value
- record_date
- payable_date
- source_state_version
- created_at
- updated_at

distribution_status_enum:
- declared
- payable
- paid
- failed
- reversed
- cancelled
- archived

idempotency_rule:
distribution_scope + distribution_ref must suppress duplicate effective distribution.

truth_boundary:
Dividend-distribution truth belongs to CivilizationOS capital-markets domain.
