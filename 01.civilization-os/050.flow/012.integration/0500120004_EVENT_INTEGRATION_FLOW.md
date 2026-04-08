# ============================================================
# EVENT INTEGRATION FLOW
# ============================================================

status: canonical
layer: flow
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for event-driven integration handling.

scope:
Covers live event handoff,
replay event handoff,
trace emission,
and invalid mode separation.

required_behavior:
- Bind event contract scope.
- Resolve live or replay event path.
- Require replay label for replay path.
- Require trace for all event handoff.
- Block mixed live/replay ambiguity.

flow_state_model:
event_integration_flow_state:
- requested
- event_bound
- mode_checked
- trace_checked
- delivered
- historical_delivered
- blocked

live_event_sequence:
1. receive live event request
2. bind event scope
3. validate live path
4. emit trace
5. deliver live event handoff

replay_event_sequence:
1. receive replay request
2. bind event scope
3. validate replay label
4. emit trace
5. deliver historical replay handoff

failure_codes:
- EVENT_INT_FLOW_EVENT_REF_MISSING
- EVENT_INT_FLOW_REPLAY_LABEL_REQUIRED
- EVENT_INT_FLOW_TRACE_REQUIRED
- EVENT_INT_FLOW_MODE_CONFLICT

example_scenarios:
- A live event updates an internal consumer immediately.
- A replay event is blocked because historical labeling is missing.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
