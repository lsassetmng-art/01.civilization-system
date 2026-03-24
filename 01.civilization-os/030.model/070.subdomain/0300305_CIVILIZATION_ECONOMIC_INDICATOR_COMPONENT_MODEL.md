# ============================================================
# CIVILIZATION ECONOMIC INDICATOR COMPONENT MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical economic indicator component model.

model_type:
- derived component model

primary_key:
- economic_indicator_component_id

natural_key:
- indicator_scope
- indicator_code
- component_code
- source_state_version

fields:
- economic_indicator_component_id
- indicator_scope
- indicator_code
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
Economic indicator components are derived component state only.
