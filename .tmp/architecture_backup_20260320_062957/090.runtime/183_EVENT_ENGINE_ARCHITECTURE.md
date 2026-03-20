# ============================================================
# EVENT ENGINE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Event engine is the primary execution coordinator for domain events.

purpose:
- accept normalized events
- determine routing path
- initiate explicit handler execution
- maintain deterministic event semantics

input_sources:
- player_action_events
- scheduled_events
- domain_generated_events
- system_generated_control_events
- recovery_events if explicitly allowed

output_targets:
- pipeline_dispatch
- downstream_domain_events
- notification_requests
- logging_requests

rules:
- engine does not directly mutate domain state
- engine routes events into explicit handlers only
- all emitted downstream events must preserve lineage

event_engine_functions:
- event_acceptance
- event_classification
- routing_key_resolution
- handler_resolution
- execution_request_emission

final_rule:
Event engine routes and coordinates events,
but domain state changes must occur only through explicit handler execution.
