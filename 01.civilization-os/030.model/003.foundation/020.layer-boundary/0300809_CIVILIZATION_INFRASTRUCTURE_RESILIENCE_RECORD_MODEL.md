# ============================================================
# CIVILIZATION INFRASTRUCTURE RESILIENCE RECORD MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical infrastructure resilience record model.

model_type:
- derived resilience model

primary_key:
- infrastructure_resilience_record_id

natural_key:
- resilience_scope
- resilience_code
- source_state_version

fields:
- infrastructure_resilience_record_id
- resilience_scope
- resilience_code
- resilience_status
- resilience_value
- source_lineage
- source_state_version
- built_at
- created_at
- updated_at

resilience_status_enum:
- current
- stale
- invalid
- superseded

truth_boundary:
Resilience records are derived state, not source truth.
