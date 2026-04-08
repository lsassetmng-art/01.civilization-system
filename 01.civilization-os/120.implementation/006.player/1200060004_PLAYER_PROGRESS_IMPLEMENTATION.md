# ============================================================
# PLAYER PROGRESS IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for player progression.

scope:
Covers current progress resolution,
restriction handling,
safe self-summary projection,
history reads,
and progression mutation guards.

implementation_focus:
- player_progress_validator
- current_progress_selector
- restriction_guard
- progress_projection_filter
- progress_history_reader
- progress_trace_emitter

handler_contracts:
- select_current_player_progress(player_ref, actor_scope) -> progress_result
- apply_progress_mutation(player_ref, mutation_payload, authority_context) -> mutation_result
- enforce_progress_restriction(progress_result, actor_scope) -> filtered_result
- read_progress_history(player_ref) -> history_result

validation_rules:
- player_ref is required.
- authority_context is required for mutating restricted or advanced stages where policy demands it.
- historical progress reads must use history path only.
- restricted-state outputs must be filtered for unauthorized consumers.

failure_codes:
- PLAYER_PROGRESS_IMPL_PLAYER_REF_MISSING
- PLAYER_PROGRESS_IMPL_MUTATION_AUTH_REQUIRED
- PLAYER_PROGRESS_IMPL_RESTRICTION_GUARD_FAILED
- PLAYER_PROGRESS_IMPL_HISTORY_READ_FAILED

example_scenarios:
- A self-facing progress read returns safe current summary, while internal readers may see deeper progress context through separate filter logic.

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
