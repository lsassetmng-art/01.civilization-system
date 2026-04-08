# ============================================================
# EVENT INTEGRATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
subdomain: event-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for event-driven integration contracts.

scope:
Covers live event handoff routing,
replay event reading,
replay label validation,
trace emission,
and denial of live/replay confusion.

implementation_focus:
- event_contract_validator
- live_event_router
- replay_event_reader
- replay_label_checker
- event_denial_handler
- event_trace_emitter

handler_contracts:
- route_live_event(contract_ref, actor_scope) -> live_event_result
- read_replay_event(contract_ref, history_context) -> replay_result
- validate_replay_label(contract_ref, replay_metadata) -> label_result
- emit_event_trace(event_type, context) -> trace_result

validation_rules:
- contract_ref is required.
- actor_scope is required for live event delivery.
- history_context is required for replay reads.
- replay_metadata is required for replay label validation.
- live event handlers must not serve replay requests.

failure_codes:
- EVENT_INT_IMPL_CONTRACT_REF_MISSING
- EVENT_INT_IMPL_ACTOR_SCOPE_MISSING
- EVENT_INT_IMPL_HISTORY_CONTEXT_REQUIRED
- EVENT_INT_IMPL_REPLAY_LABEL_FAILED
- EVENT_INT_IMPL_LIVE_REPLAY_CONFUSION
- EVENT_INT_IMPL_TRACE_EMIT_FAILED

example_scenarios:
- A replay request bypasses live_event_router entirely and goes only through replay_event_reader plus replay_label_checker.

required_behavior:
- validate canonical input before execution
- keep restricted and public paths separated where applicable
- preserve historical reads as separate from live execution

implementation_components:
- validator
- resolver or router
- filter or guard
- history reader
- trace emitter

module_split:
- input validation module
- execution module
- filtering or guard module
- history module
- trace module

implementation_rules:
- validation precedes execution
- filtering precedes delivery
- history paths remain distinct from live paths
- denied actions emit stable failure codes and trace
