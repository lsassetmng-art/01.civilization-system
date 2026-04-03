# ============================================================
# CIVILIZATION RECYCLING BATCH MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical recycling batch model.

model_type:
- circular operations truth model

primary_key:
- recycling_batch_id

natural_key:
- batch_scope
- batch_ref

fields:
- recycling_batch_id
- batch_scope
- batch_ref
- batch_status
- input_waste_code
- recovered_output_code
- processed_quantity
- source_state_version
- correlation_id
- processed_at
- created_at
- updated_at

batch_status_enum:
- pending
- active
- completed
- failed
- reversed
- cancelled
- archived

idempotency_rule:
batch_scope + batch_ref must suppress duplicate effective recycling processing.

truth_boundary:
Recycling-batch truth belongs to CivilizationOS environment-circularity domain.
