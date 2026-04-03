# ============================================================
# CIVILIZATION ENERGY DISTRIBUTION RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical energy distribution record model.

model_type:
- infrastructure operations model

primary_key:
- energy_distribution_record_id

natural_key:
- distribution_ref
- grid_code

fields:
- energy_distribution_record_id
- distribution_ref
- grid_code
- distribution_status
- target_scope
- distributed_value
- source_state_version
- correlation_id
- distributed_at
- created_at
- updated_at

distribution_status_enum:
- pending
- distributed
- constrained
- failed
- reversed
- cancelled

idempotency_rule:
distribution_ref + grid_code must suppress duplicate effective distribution.

truth_boundary:
Energy distribution truth belongs to CivilizationOS infrastructure operations.
