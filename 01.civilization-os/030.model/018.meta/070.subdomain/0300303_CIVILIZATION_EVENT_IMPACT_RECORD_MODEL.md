# ============================================================
# CIVILIZATION EVENT IMPACT RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical event impact record model.

model_type:
- derived event impact model

primary_key:
- event_impact_record_id

natural_key:
- civilization_event_id
- impact_scope
- impact_code

fields:
- event_impact_record_id
- civilization_event_id
- impact_scope
- impact_code
- impact_status
- impact_value
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

impact_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
Event impact records are derived from source events, not source truth themselves.
