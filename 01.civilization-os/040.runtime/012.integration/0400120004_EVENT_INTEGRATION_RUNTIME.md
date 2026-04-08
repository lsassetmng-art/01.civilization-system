# ============================================================
# EVENT INTEGRATION RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for event-driven integration.

scope:
Covers live event handoff,
replay event handoff,
event trace enforcement,
and rejection of invalid event-boundary crossing.

runtime_rules:
- Runtime must bind event integration to event contract scope.
- Live and replay event delivery must remain distinct.
- Replay delivery requires explicit replay labeling.
- Trace is mandatory for event integration.

required_behavior:
- Resolve live event handoff.
- Resolve replay event handoff.
- Emit trace for both accepted and rejected event handoff.
- Block unlabeled replay delivery.

state_model:
event_integration_runtime_state:
- unresolved
- live_event_ready
- replay_event_ready
- delivered
- blocked
- historical_only

validation_rules:
- event_ref or event contract scope is required.
- replay delivery requires replay label.
- trace path is required.
- live and replay event modes must not mix silently.

transition_rules:
- unresolved -> live_event_ready
- unresolved -> replay_event_ready
- ready -> delivered
- replay delivery -> historical_only
- invalid -> blocked

failure_codes:
- EVENT_INT_RT_EVENT_REF_MISSING
- EVENT_INT_RT_REPLAY_LABEL_REQUIRED
- EVENT_INT_RT_TRACE_REQUIRED
- EVENT_INT_RT_MODE_CONFLICT

example_scenarios:
- A live event handoff triggers an internal consumer update.
- A replay handoff is blocked because replay label is missing.
