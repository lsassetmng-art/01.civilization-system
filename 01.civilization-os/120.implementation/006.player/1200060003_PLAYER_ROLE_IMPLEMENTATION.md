# ============================================================
# PLAYER ROLE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for player roles.

scope:
Covers effective-role selection,
secondary-role coexistence handling,
elevated-role authorization checks,
restricted-role filtering,
and role history reads.

implementation_focus:
- player_role_validator
- effective_role_selector
- secondary_role_coexistence_checker
- elevated_role_auth_checker
- role_projection_filter
- role_history_reader
- role_trace_emitter

handler_contracts:
- select_effective_player_role(player_ref, actor_scope) -> role_result
- validate_secondary_role_coexistence(player_ref) -> coexistence_result
- authorize_elevated_role_change(player_ref, role_change_payload, authority_context) -> auth_result
- read_role_history(player_ref) -> history_result

validation_rules:
- player_ref is required.
- authority_context is required for elevated role mutation.
- incompatible role sets must not be emitted as valid effective output.
- restricted roles must be filtered for unauthorized consumers.

failure_codes:
- PLAYER_ROLE_IMPL_PLAYER_REF_MISSING
- PLAYER_ROLE_IMPL_COEXISTENCE_CONFLICT
- PLAYER_ROLE_IMPL_ELEVATED_AUTH_REQUIRED
- PLAYER_ROLE_IMPL_FILTER_FAILED
- PLAYER_ROLE_IMPL_HISTORY_READ_FAILED

example_scenarios:
- A public-safe role summary is generated through role_projection_filter, while internal readers receive effective_role_selector output.

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
