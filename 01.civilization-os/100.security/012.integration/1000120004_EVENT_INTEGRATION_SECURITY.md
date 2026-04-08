# ============================================================
# EVENT INTEGRATION SECURITY
# ============================================================

status: canonical
layer: security
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for event-driven integration contracts.

scope:
Covers live-event handoff security,
replay-event handoff security,
trace enforcement,
and prevention of live/replay confusion.

security_focus:
- separation of live event delivery from replay delivery
- replay labeling enforcement
- trace protection
- prevention of replay being used as live current signal

actor_matrix:
- internal_consumer -> live event handoff where authorized
- restricted_operator -> restricted event handoff where authorized
- auditor -> replay/historical event traces where authorized

decision_table:
- internal_consumer + live event -> allow where authorized
- internal_consumer + replay trace without replay/history authorization -> block
- restricted_operator + restricted event detail -> allow where authorized
- auditor + replay event trace -> allow only through audit/history path

validation_rules:
- event contract ref is required.
- replay delivery requires explicit replay or historical labeling.
- replay trace access must not be granted through live-event permission alone.
- sensitive event traces require trace-protected audit path.

failure_codes:
- EVENT_INT_SEC_CONTRACT_REF_MISSING
- EVENT_INT_SEC_LIVE_ACCESS_DENIED
- EVENT_INT_SEC_REPLAY_LABEL_REQUIRED
- EVENT_INT_SEC_REPLAY_ACCESS_DENIED
- EVENT_INT_SEC_TRACE_DENIED

example_scenarios:
- A consumer authorized for live event updates still cannot read replay traces without separate authorization.
