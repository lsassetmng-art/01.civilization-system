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
