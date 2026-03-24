# ============================================================
# CIVILIZATION EVENT REGISTRY TRACE MODEL
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical event registry trace model.

model_type:
- trace registry model

primary_key:
- event_registry_trace_id

natural_key:
- event_domain
- event_code
- correlation_id

fields:
- event_registry_trace_id
- event_domain
- event_code
- registry_status
- source_domain
- source_event_id
- source_state_version
- correlation_id
- causation_id
- traced_at
- created_at

registry_status_enum:
- registered
- superseded
- invalid
- archived

truth_boundary:
Trace registry preserves lineage and registry visibility.
