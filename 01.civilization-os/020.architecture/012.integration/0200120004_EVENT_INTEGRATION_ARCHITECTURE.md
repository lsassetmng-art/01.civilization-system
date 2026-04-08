# ============================================================
# EVENT INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines event-driven integration architecture.

scope:
Covers event-based handoff, event contract semantics,
event traceability, event replay boundary,
and event-linked integration safety.

design_intent:
Event integration enables bounded reactive behavior
without direct cross-boundary mutation.

canonical_rules:
- Event integration must use declared event contract.
- Event source and target scope must be explicit.
- Event replay must remain distinguishable from live event delivery.
- Event traceability is mandatory.
- Missing trace or missing contract invalidates event integration.

required_behavior:
- Support live event handoff.
- Support replay-safe historical event handoff.
- Support event rejection.
- Support trace and audit inspection.

state_model:
event_integration_class:
- live_event_handoff
- replay_event_handoff
- event_review
- event_audit

validation_rules:
- event_ref or equivalent event contract scope is required.
- live and replay handoff must not be silently mixed.
- trace path is required.
- replay event must be labeled.

transition_rules:
- reviewed -> active
- active -> suspended
- active -> archived

failure_codes:
- EVENT_INTEGRATION_EVENT_REF_MISSING
- EVENT_INTEGRATION_TRACE_REQUIRED
- EVENT_INTEGRATION_REPLAY_LABEL_REQUIRED
- EVENT_INTEGRATION_MODE_CONFLICT

example_scenarios:
- A live event notifies an internal consumer through live_event_handoff.
- A historical replay viewer receives replay_event_handoff with explicit replay labeling.
