# ============================================================
# CIVILIZATION DEMAND SIGNAL RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical demand signal record model.

model_type:
- derived demand model

primary_key:
- demand_signal_record_id

natural_key:
- demand_scope
- demand_code
- signal_window

fields:
- demand_signal_record_id
- demand_scope
- demand_code
- signal_window
- signal_status
- demand_value
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

signal_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
Demand signals are derived state, not canonical truth.
