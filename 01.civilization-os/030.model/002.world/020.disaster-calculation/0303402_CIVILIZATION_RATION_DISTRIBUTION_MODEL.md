# ============================================================
# CIVILIZATION RATION DISTRIBUTION MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical ration distribution model.

model_type:
- emergency allocation truth model

primary_key:
- ration_distribution_id

natural_key:
- distribution_scope
- distribution_ref
- target_group_ref

fields:
- ration_distribution_id
- distribution_scope
- distribution_ref
- target_group_ref
- distribution_status
- ration_summary
- distributed_quantity
- source_state_version
- distributed_at
- created_at
- updated_at

distribution_status_enum:
- pending
- active
- completed
- failed
- reversed
- archived

idempotency_rule:
distribution_scope + distribution_ref must suppress duplicate effective ration distribution.

truth_boundary:
Ration-distribution truth belongs to CivilizationOS disaster-relief-stockpile domain.
