# ============================================================
# PLAYER IDENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines player identity architecture.

scope:
Covers canonical player identity binding,
identity stability, identity lookup boundary,
and identity lifecycle relation to player existence.

design_intent:
Player identity is the stable anchor of participation.
It must remain distinct from role, mode, or session context.

canonical_rules:
- Identity binding must be explicit.
- Identity binding must remain stable across role changes.
- Identity binding must not be replaced by display-only profile fields.
- Identity lifecycle must remain consistent with player lifecycle.

required_behavior:
- Support stable identity binding.
- Support identity lookup.
- Support archival identity relation.
- Support history-safe inspection.

state_model:
player_identity_state:
- pending_bind
- bound
- verified
- suspended
- archived

validation_rules:
- identity_ref is required.
- one active player should not ambiguously bind to conflicting identity scope.
- archived identity relation must not act as active bind without reactivation.

transition_rules:
- pending_bind -> bound
- bound -> verified
- verified -> suspended
- suspended -> verified
- verified -> archived

failure_codes:
- PLAYER_IDENTITY_BIND_MISSING
- PLAYER_IDENTITY_CONFLICT
- PLAYER_IDENTITY_ARCHIVE_REUSE_DENIED

example_scenarios:
- A player remains the same identity even after role transitions.
- A suspended identity relation blocks new active participation until resolved.
