# ============================================================
# INTEGRATION CORE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core implementation responsibilities for integration contracts.

scope:
Covers contract validation, class routing,
projection filtering, proposal-only intake,
bounded-sync handling, canonical-write guarding,
history/replay reading, and integration trace emission.

design_intent:
Integration implementation must make boundary behavior explicit.
It must never let proposal data cross into mutating lanes by accident,
nor let public projections include restricted raw payload.

implementation_components:
- integration_input_validator
- contract_class_router
- projection_filter
- proposal_only_handler
- bounded_sync_handler
- canonical_write_guard
- replay_history_reader
- integration_denial_handler
- integration_trace_emitter

handler_contracts:
- validate_integration_request(input) -> validation_result
- route_contract_class(contract_ref, request_context) -> route_result
- project_contract_output(route_result, actor_scope) -> projection_result
- handle_proposal_only_import(payload, metadata) -> proposal_result
- handle_bounded_sync(payload, authority_context) -> sync_result
- guard_canonical_write(payload, authority_context) -> write_guard_result
- read_integration_history(contract_ref, history_context) -> history_result
- emit_integration_trace(event_type, context) -> trace_result

implementation_rules:
- Validation must occur before any routing.
- Proposal-only payloads must be handled in isolated handlers only.
- Projection filters must run before external/public delivery.
- Canonical-write guard must run before any write-capable action.
- Replay/history readers must never reuse live delivery handlers.
- Denied actions must emit explicit trace and failure codes.

module_split:
- validator module
- router module
- projection module
- proposal module
- sync module
- write-guard module
- history/replay module
- denial module
- trace module

validation_rules:
- contract_ref is required.
- request_context is required.
- actor_scope is required for filtered delivery.
- authority_context is required for bounded sync or canonical write.
- history_context is required for replay/history reads.

failure_codes:
- INTEGRATION_IMPL_CONTRACT_REF_MISSING
- INTEGRATION_IMPL_REQUEST_CONTEXT_MISSING
- INTEGRATION_IMPL_ACTOR_SCOPE_MISSING
- INTEGRATION_IMPL_AUTHORITY_CONTEXT_REQUIRED
- INTEGRATION_IMPL_ROUTING_FAILED
- INTEGRATION_IMPL_PROPOSAL_ISOLATION_FAILED
- INTEGRATION_IMPL_CANONICAL_WRITE_GUARD_FAILED
- INTEGRATION_IMPL_HISTORY_READ_FAILED
- INTEGRATION_IMPL_TRACE_EMIT_FAILED

example_scenarios:
- A public export validates contract_ref, routes to read-only projection, filters restricted fields, and emits export trace.
- A proposal payload is isolated in proposal_only_handler and never reaches canonical_write_guard.
