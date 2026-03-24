# ============================================================
# CIVILIZATION ECONOMIC INDICATOR MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical economic indicator model.

model_type:
- derived indicator model

primary_key:
- economic_indicator_id

natural_key:
- indicator_scope
- indicator_code
- indicator_window

fields:
- economic_indicator_id
- indicator_scope
- indicator_code
- indicator_window
- indicator_value
- source_lineage
- source_state_version
- indicator_status
- built_at
- created_at
- updated_at

indicator_status_enum:
- current
- stale
- rebuilding
- invalid

truth_boundary:
Economic indicators are derived, not source truth.
