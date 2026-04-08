# ============================================================
# PLAYER CORE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core integration behavior for player data.

scope:
Covers internal projection of player runtime context,
public-safe player projection,
historical player export,
audit-safe player trace,
and rejection of unsafe player-boundary crossing.

design_intent:
Player integration must preserve the distinction between
identity, role, progress, and boundary.
Consumers should receive only the player context they are entitled to receive.

canonical_rules:
- Canonical player truth remains owned by CivilizationOS.
- External player export must be projection-based.
- Historical player export must be labeled.
- Restricted role or boundary context must be masked or denied outside authority.
- Imported player-related payload must not overwrite canonical player truth without authority.

required_behavior:
- Support internal current player projection.
- Support public-safe external projection.
- Support historical player export.
- Support audit-safe player trace delivery.
- Support proposal-only intake for external annotations or suggestions.

integration_state_model:
player_integration_state:
- projected
- masked
- delivered
- historical_delivered
- proposal_only
- rejected

projection_mode:
- internal_current
- public_summary
- historical_player
- audit_player

validation_rules:
- player_ref is required.
- current export requires coherent live player state.
- historical export requires historical flag.
- public projection must not leak restricted role or admin-only boundary context.
- imported overwrite attempt without authority is prohibited.

failure_codes:
- PLAYER_INT_REF_MISSING
- PLAYER_INT_CURRENT_STATE_INVALID
- PLAYER_INT_HISTORICAL_FLAG_REQUIRED
- PLAYER_INT_PUBLIC_SCOPE_VIOLATION
- PLAYER_INT_OVERWRITE_DENIED

example_scenarios:
- An internal module receives a player's current role and progress context.
- A public consumer receives only a summary-safe player projection.
- An external note about a player becomes proposal_only.
