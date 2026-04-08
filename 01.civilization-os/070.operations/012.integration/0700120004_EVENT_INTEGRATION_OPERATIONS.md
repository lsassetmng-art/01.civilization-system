# ============================================================
# EVENT INTEGRATION OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for event integration contracts.

scope:
Covers live-event contract activation,
replay-event handling,
trace review,
and containment of unlabeled replay or missing-trace incidents.

required_behavior:
- Support live event-contract operation.
- Support replay-event review and preservation.
- Support containment of live/replay confusion.
- Support event-trace audit.

state_model:
event_integration_operational_state:
- prepared
- active_live
- replay_ready
- contained
- audit_review
- archived

validation_rules:
- event contract ref is required.
- replay path requires replay label.
- trace is mandatory.
- live/replay ambiguity requires containment.

transition_rules:
- prepared -> active_live
- active_live -> replay_ready
- active_live -> contained
- replay_ready -> archived
- contained -> audit_review

failure_codes:
- EVENT_INT_OP_CONTRACT_REF_MISSING
- EVENT_INT_OP_REPLAY_LABEL_REQUIRED
- EVENT_INT_OP_TRACE_MISSING
- EVENT_INT_OP_MODE_CONFUSION_DETECTED

example_scenarios:
- A replay event contract is blocked and contained because historical labeling is missing.
