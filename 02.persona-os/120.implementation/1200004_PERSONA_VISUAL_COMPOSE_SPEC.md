# ============================================================
# PERSONA VISUAL COMPOSE SPEC
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / visual compose contract
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Canonical manifest root

Object name:
`persona_visual_manifest`

Required fields:
- `manifest_version`
- `persona_root_id`
- `source_release_id`
- `default_variant_key`
- `variants`
- `surface_policy`

## Variant fields

Each variant requires:
- `variant_key`
- `display_name`
- `avatar_asset_id`
- `background_asset_id`
- `placement_profile`
- `expression_map`
- `animation_profile`

`placement_profile.anchor` allowed values:
- `bottom-center`
- `bottom-left`
- `bottom-right`
- `center`

## Compose rule

Visual compose resolves in this order:
1. released visual manifest
2. selected variant
3. expression key
4. animation profile
5. host surface capability filter
6. final render binding

Compose must never read mutable draft state.
Only released or approved frozen source objects are eligible.

## Error codes

- `persona_visual_manifest_not_found`
- `persona_visual_variant_not_found`
- `persona_visual_expression_not_mapped`
- `persona_visual_asset_missing`
- `persona_visual_surface_not_supported`

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
