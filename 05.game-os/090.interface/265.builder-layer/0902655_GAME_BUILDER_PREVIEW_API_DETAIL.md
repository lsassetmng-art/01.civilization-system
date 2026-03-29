# ============================================================
# GAME BUILDER PREVIEW API DETAIL
# ============================================================

status: canonical
layer: 090.interface
system: game-os
owner: Boss
prepared_by: Zero

purpose:
Define the detailed Preview API of Game Builder.

This interface specifies the preview-facing API contract
used by Preview Studio and preview-supporting services.

It covers:
- preview session creation
- preview session retrieval
- preview action execution
- preview state retrieval
- preview reset
- preview restart
- preview close/discard
- preview basis selection
- preview mode selection
- mock mode declaration
- preview output visibility

This document defines required request/response fields
and behavioral rules.


# ============================================================
# 1. ROLE OF PREVIEW API
# ============================================================

The Preview API manages sandbox preview sessions
for Builder-authored projects.

It must support:
- runtime-backed preview
- explicit preview basis
- explicit preview mode
- explicit mock mode
- preview-only outputs
- safe session discard

It must not:
- finalize production truth
- finalize entitlement truth
- finalize ranking truth
- finalize achievement truth
- finalize commerce truth
- mutate Persona truth
- bypass sync adjudication boundaries


# ============================================================
# 2. PREVIEW SESSION OBJECT MINIMUM SHAPE
# ============================================================

A preview session object must expose at minimum:

- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- preview_state_summary
- preview_output_summary
- created_at
- updated_at
- expires_at where applicable

session_status examples:
- created
- active
- closed
- failed
- expired
- discarded


# ============================================================
# 3. CREATE PREVIEW SESSION
# ============================================================

operation_name:
create_preview_session

purpose:
Create a new sandbox preview session.

required_request_fields:
- project_code
- preview_basis
- preview_mode
- correlation_id

optional_request_fields:
- revision_ref when preview_basis = saved_revision_preview
- mock_mode_summary
- block_scope_ref where block-scope preview is used
- preview_summary

required_response_fields:
- preview_session_id
- project_code
- runtime_family_code
- preview_basis
- preview_mode
- mock_mode_summary
- session_status
- created_at

behavior_rules:
- preview_basis must be explicit
- preview_mode must be explicit
- preview session must be sandboxed
- creation must not finalize production truth
- creation may validate preview compatibility before activation

blocking_conditions:
- project unresolved
- invalid preview basis
- invalid preview mode for runtime family
- revision unresolved where required
- preview policy violation
- permission denied


# ============================================================
# 4. GET PREVIEW SESSION
# ============================================================

operation_name:
get_preview_session

purpose:
Return one preview session in detail.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview session object with minimum shape
- preview basis summary
- mock mode summary
- preview state summary
- preview output summary
- sandbox status summary

behavior_rules:
- response must be enough to populate Preview Studio shell
- response must make sandbox/non-authoritative nature visible


# ============================================================
# 5. EXECUTE PREVIEW ACTION
# ============================================================

operation_name:
execute_preview_action

purpose:
Advance or simulate preview behavior inside the session.

required_request_fields:
- project_code
- preview_session_id
- action_type
- correlation_id

optional_request_fields:
- action_payload
- target_ref where applicable
- branch_choice_ref where applicable
- preview_control_flags where applicable

required_response_fields:
- preview_session_id
- resulting_preview_state_summary
- preview_output_summary
- session_status
- updated_at

Allowed action_type examples:
- advance_scene
- choose_branch
- trigger_event
- start_battle_preview
- resolve_battle_step
- start_stage_preview
- apply_stage_action
- retry_stage
- start_turn
- execute_unit_action
- end_turn
- reset_local_preview_context

behavior_rules:
- action execution must remain sandboxed
- action execution must remain runtime-aware
- resulting outputs must remain preview-only
- illegal production-bound actions must be blocked

blocking_conditions:
- preview session unresolved
- invalid action for runtime family
- invalid action for preview mode
- preview policy violation
- permission denied


# ============================================================
# 6. GET PREVIEW STATE
# ============================================================

operation_name:
get_preview_state

purpose:
Return the current runtime-visible state of a preview session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- runtime_location_summary
- progression_state_summary
- preview_state_summary
- preview_output_summary
- mock_mode_summary
- updated_at

behavior_rules:
- preview state must remain non-authoritative
- response should be sufficient for Preview Studio state panels
- response must distinguish runtime-local state from preview outputs


# ============================================================
# 7. GET PREVIEW OUTPUTS
# ============================================================

operation_name:
get_preview_outputs
or
preview outputs included in get_preview_state

purpose:
Return preview-only candidate outputs produced by the current session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- preview_output_list or summary

Each preview output entry should expose at minimum:
- output_type
- output_status
- preview_only_flag
- summary
- source_action_ref where applicable
- generated_at

Possible output_type examples:
- ending_preview
- reward_candidate_preview
- score_candidate_preview
- ranking_candidate_preview
- achievement_candidate_preview
- save_candidate_preview
- replay_candidate_preview
- telemetry_candidate_preview

behavior_rules:
- every output must remain preview_only
- no output may claim production finality


# ============================================================
# 8. RESET PREVIEW STATE
# ============================================================

operation_name:
reset_preview_state

purpose:
Reset the runtime-local state of an active preview session.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

optional_request_fields:
- reset_scope where applicable
- reset_summary

required_response_fields:
- preview_session_id
- resulting_preview_state_summary
- updated_at

behavior_rules:
- reset must remain sandbox-local
- reset must not mutate production truth
- reset may preserve session identity
- reset should clear runtime-local progression within the session
  according to preview policy


# ============================================================
# 9. RESTART PREVIEW SESSION
# ============================================================

operation_name:
restart_preview_session

purpose:
Start a fresh simulation using the same preview basis and mode.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
or
- new_preview_session_id where restart creates fresh identity
- preview_basis
- preview_mode
- session_status
- updated_at or created_at

behavior_rules:
- restart must preserve sandbox rules
- restart must not mutate production truth
- restart should clearly indicate whether session identity changed


# ============================================================
# 10. CLOSE / DISCARD PREVIEW SESSION
# ============================================================

operation_name:
close_preview_session
or
discard_preview_session

purpose:
End the preview session and discard or finalize temporary sandbox context.

required_request_fields:
- project_code
- preview_session_id
- correlation_id

required_response_fields:
- preview_session_id
- session_status
- updated_at

behavior_rules:
- close/discard must be safe
- close/discard must not create production truth
- preview session closure must not require production cleanup
- discarded preview outputs must remain non-authoritative


# ============================================================
# 11. PREVIEW BASIS RULE
# ============================================================

The Preview API must support explicit basis declaration.

Allowed preview_basis values:
- working_state_preview
- saved_revision_preview

Rules:
- working_state_preview uses current mutable authoring state
- saved_revision_preview uses one explicit official saved revision
- basis must remain visible in all preview session responses

A saved revision preview without revision_ref where required
must be invalid.


# ============================================================
# 12. PREVIEW MODE RULE
# ============================================================

The Preview API must support explicit mode declaration.

Minimum mode families:
- block_scope_preview
- flow_scope_preview
- full_project_preview

Runtime-specific mode examples:
- scene_preview
- route_preview
- battle_preview
- stage_preview
- map_preview
- turn_preview

The API must reject preview modes
that are incompatible with the resolved runtime family.


# ============================================================
# 13. MOCK MODE RULE
# ============================================================

The Preview API must support explicit mock mode declaration.

Mock mode may cover:
- ranking visibility
- achievement visibility
- entitlement-gated visibility
- commerce UI visibility
- Persona projection shaping preview

required_response_fields where mock mode is used:
- mock_mode_enabled
- enabled_mock_domains
- prohibited_real_domains

Mock mode must not silently call production-final mutation paths.


# ============================================================
# 14. ROLE-AWARE ACCESS RULE
# ============================================================

Preview API access must be role-aware.

owner:
- full preview authority

editor:
- broad preview authority according to policy

reviewer:
- preview visibility and execution authority where granted,
  without unrestricted content mutation rights

publisher:
- preview visibility and execution authority where granted,
  for release confidence purposes

Permissions must be enforced by API.


# ============================================================
# 15. ERROR MODEL
# ============================================================

Preview API should distinguish at minimum:

- invalid_request
- permission_denied
- not_found
- dependency_unresolved
- policy_blocked
- state_conflict
- preview_blocked
- runtime_incompatible

Where helpful, responses should expose:
- blocking_reason_summary
- incompatible_mode_summary
- next_allowed_actions summary


# ============================================================
# 16. FINAL INTERFACE RULE
# ============================================================

The Preview API is the sandbox execution surface
behind Preview Studio.

Core summary:

- preview session is the primary simulation unit
- preview basis must be explicit
- preview mode must be explicit
- mock mode must be explicit where used
- preview actions must remain sandboxed
- preview outputs must remain preview-only
- reset/restart/close must be safe
- no preview path may finalize production truth
