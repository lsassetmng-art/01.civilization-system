# ============================================================
# CIVILIZATION DERIVED AGGREGATE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical derived aggregate model pattern.

model_type:
- derived model

primary_key:
- derived_aggregate_id

natural_key:
- aggregate_domain
- aggregate_scope
- aggregate_key

fields:
- derived_aggregate_id
- aggregate_domain
- aggregate_scope
- aggregate_key
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
Derived aggregates are not canonical truth.
They must preserve lineage to their source truth.
