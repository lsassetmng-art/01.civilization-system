# ============================================================
# PERSONA VISUAL RUNTIME IMPLEMENTATION
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / visual runtime
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Runtime read model

Visual runtime consumes:
- `persona_release`
- `persona_visual_manifest`
- `persona_asset_binding`
- host surface capability profile

Visual runtime does not mutate released artifacts.

## Host adapter contract

Host request fields:
- `runtime_session_id`
- `variant_key`
- `expression_key`
- `speech_state`
- `surface_width`
- `surface_height`
- `host_capabilities`

Host response fields:
- `resolved_avatar_asset_id`
- `resolved_background_asset_id`
- `placement_profile`
- `resolved_animation_key`
- `transition_ms`

## Expression resolution

Canonical expression priority:
1. explicit expression key
2. speech-state mapped expression
3. runtime emotional override
4. default idle expression

## Runtime visual states

- `idle`
- `listening`
- `thinking`
- `talking`
- `happy`
- `sad`
- `error`

State changes are append-audit only.

# EXACT READY REINFORCEMENT

status_extension: author-reviewed-with-exact-ready-reinforcement
reinforced_at: 20260417_150009
reinforcement_scope:
- implementation contract clarification
- persistence touchpoint clarification
- error family clarification
- acceptance target clarification

domain: visual

minimum_exact_contract:
- define authoritative operation names
- define request-side required identifiers
- define response-side success and reject families
- define validation gates
- define state transition or resolution boundaries
- define persistence touchpoints
- define retry and dead-letter behavior where applicable

minimum_error_families:
- invalid_request
- authority_blocked
- lifecycle_blocked
- conflict_or_duplicate where applicable
- internal_retryable where applicable
- internal_terminal

minimum_acceptance_targets:
- success path
- reject or blocked path
- audit persistence proof
- retry-safe path where applicable

implementation_ready_note:
This reinforcement does not replace the authored content above.
It marks the minimum exact-ready items that must be made explicit
before implementation is considered complete for this document.

# EXACT PAYLOAD FIXATION

exact_payload_domain: visual_runtime
fixed_at: 20260417_164735

resolve_visual_request:
  required_fields:
    - persona_id
    - release_source_id
    - resolution_context

resolve_visual_response:
  required_fields:
    - persona_id
    - visual_profile_id
    - avatar_asset_id
    - background_asset_id
    - expression_profile_id
    - animation_profile_id
    - resolution_status

fixed_resolution_status_family:
- resolved
- fallback_resolved
- blocked_unreleased
- blocked_missing_binding

mandatory_controls:
- released source only
- deterministic binding resolution
- explicit fallback result when fallback is used

# EXACT CODE FAMILY FIXATION

exact_code_family_domain: visual_runtime
fixed_at: 20260417_164945

fixed_resolution_status_family:
- resolved
- fallback_resolved
- blocked_unreleased
- blocked_missing_binding

fixed_result_code_family:
- VISUAL_RESOLVE_SUCCESS
- VISUAL_FALLBACK_SUCCESS
- VISUAL_BLOCKED_UNRELEASED
- VISUAL_BLOCKED_MISSING_BINDING

fixed_error_code_family:
- ERR_ASSET_RESOLUTION_FAILURE
- ERR_INTERNAL_RETRYABLE
- ERR_INTERNAL_TERMINAL

rules:
- fallback_resolved must remain distinct from resolved
- unreleased and missing-binding blocks must remain distinct
- internal failures must not masquerade as domain block results

# EXACT STATE ENUM AND TRANSITION FIXATION

exact_state_transition_domain: visual_runtime
fixed_at: 20260417_165940

resolution_status_enum:
- unresolved
- resolving
- resolved
- fallback_resolved
- blocked_unreleased
- blocked_missing_binding
- terminal_failed

resolution_transition_table:
- unresolved -> resolving : start_resolution
- resolving -> resolved : resolve_success
- resolving -> fallback_resolved : resolve_with_fallback
- resolving -> blocked_unreleased : block_on_unreleased_source
- resolving -> blocked_missing_binding : block_on_missing_binding
- resolving -> terminal_failed : internal_terminal_failure

rules:
- fallback_resolved must remain distinct from resolved
- blocked_unreleased and blocked_missing_binding are separate terminals
- terminal_failed must not reuse block status

# EXACT REQUEST RESPONSE EXAMPLES

exact_example_domain: visual_runtime
fixed_at: 20260417_174222

resolve_visual_request_example:
  persona_id: persona_001
  release_source_id: release_001
  resolution_context:
    surface: mobile
    theme: default

resolve_visual_response_example:
  persona_id: persona_001
  visual_profile_id: vp_001
  avatar_asset_id: avatar_001
  background_asset_id: bg_001
  expression_profile_id: expr_001
  animation_profile_id: anim_001
  resolution_status: resolved
  result_code: VISUAL_RESOLVE_SUCCESS
