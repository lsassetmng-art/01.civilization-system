# ============================================================
# CIVILIZATION WORLD AGGREGATE COMPONENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical world aggregate component model.

model_type:
- derived component model

primary_key:
- world_aggregate_component_id

natural_key:
- aggregate_scope
- aggregate_code
- component_code
- source_state_version

fields:
- world_aggregate_component_id
- aggregate_scope
- aggregate_code
- component_code
- component_value
- component_status
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

component_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
World aggregate components are derived component state only.
