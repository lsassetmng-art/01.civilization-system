# ============================================================
# CIVILIZATION DISTRIBUTION BATCH MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical distribution batch model.

model_type:
- distribution operations model

primary_key:
- distribution_batch_id

natural_key:
- batch_scope
- batch_ref

fields:
- distribution_batch_id
- batch_scope
- batch_ref
- batch_status
- source_inventory_code
- target_scope
- distributed_quantity
- source_state_version
- correlation_id
- distributed_at
- created_at
- updated_at

batch_status_enum:
- pending
- released
- completed
- failed
- reversed
- cancelled

idempotency_rule:
batch_scope + batch_ref must suppress duplicate effective distribution release.

truth_boundary:
Distribution batch truth belongs to CivilizationOS supply-production operations.
