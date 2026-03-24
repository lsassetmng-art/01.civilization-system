# ============================================================
# CIVILIZATION WORLD STATE AGGREGATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical world state aggregate model.

model_type:
- derived aggregate model

primary_key:
- world_state_aggregate_id

natural_key:
- aggregate_scope
- aggregate_code
- aggregate_window

fields:
- world_state_aggregate_id
- aggregate_scope
- aggregate_code
- aggregate_window
- aggregate_value
- source_lineage
- source_state_version
- aggregate_status
- built_at
- created_at
- updated_at

aggregate_status_enum:
- current
- stale
- rebuilding
- invalid

truth_boundary:
World state aggregates are derived state, not canonical source truth.
