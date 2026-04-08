# ============================================================
# PLAYER CORE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core implementation responsibilities for player handling.

scope:
Covers player validation, live player resolution,
lifecycle handling, identity/role/progress/boundary composition,
history reading, mutation guards,
and trace emission.

design_intent:
Player implementation must decide one explicit participation result:
live, limited, view-only, historical, or blocked.
It must never infer hidden live capability from stale or historical state.

implementation_components:
- player_input_validator
- live_player_resolver
- player_lifecycle_handler
- player_identity_reader
- player_role_selector
- player_progress_selector
- player_boundary_enforcer
- player_history_reader
- player_mutation_guard
- player_trace_emitter

handler_contracts:
- validate_player_request(input) -> validation_result
- resolve_live_player(player_ref, request_mode) -> player_result
- apply_player_lifecycle_change(player_ref, lifecycle_action, authority_context) -> lifecycle_result
- read_player_identity(player_ref, actor_scope) -> identity_result
- select_player_role(player_ref, actor_scope) -> role_result
- select_player_progress(player_ref, actor_scope) -> progress_result
- enforce_player_boundary(player_ref, requested_action, actor_scope) -> boundary_result
- read_player_history(player_ref, history_context) -> history_result
- emit_player_trace(event_type, context) -> trace_result

implementation_rules:
- Validation must precede live resolution or mutation.
- Lifecycle mutation must run before role/progress/boundary recomposition.
- History reads must never mutate live player state.
- Boundary enforcement must occur before final action delivery.
- Restricted fields must be filtered before output.
- Denials and high-impact mutations must emit trace.

module_split:
- validator module
- resolver module
- lifecycle module
- identity module
- role module
- progress module
- boundary module
- history module
- trace module

validation_rules:
- player_ref is required.
- request_mode is required.
- authority_context is required for lifecycle or boundary mutation where applicable.
- history_context is required for historical reads.
- requested_action is required for boundary enforcement.

failure_codes:
- PLAYER_IMPL_PLAYER_REF_MISSING
- PLAYER_IMPL_REQUEST_MODE_MISSING
- PLAYER_IMPL_AUTHORITY_CONTEXT_REQUIRED
- PLAYER_IMPL_HISTORY_CONTEXT_REQUIRED
- PLAYER_IMPL_LIVE_RESOLUTION_FAILED
- PLAYER_IMPL_BOUNDARY_ENFORCEMENT_FAILED
- PLAYER_IMPL_TRACE_EMIT_FAILED

example_scenarios:
- A live read validates player_ref, resolves current lifecycle, composes identity/role/progress/boundary, filters output, and emits trace.
- A suspension action mutates lifecycle first, invalidates live eligibility, and preserves prior-state linkage.
