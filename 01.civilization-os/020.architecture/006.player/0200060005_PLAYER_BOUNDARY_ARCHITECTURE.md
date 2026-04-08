# ============================================================
# PLAYER BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines player boundary architecture.

scope:
Covers participation boundary, control boundary,
view boundary, administrative boundary,
and replay/history boundary for players.

design_intent:
Player boundary exists so the system can distinguish
what the player may do, what the player may see,
and what others may do about the player.

canonical_rules:
- Participation boundary must be explicit.
- View boundary must be explicit.
- Administrative intervention boundary must be explicit.
- Replay/history boundary must be separate from live control boundary.

required_behavior:
- Support live participation boundary.
- Support limited participation boundary.
- Support view-only boundary.
- Support administrative intervention boundary.
- Support replay/history boundary.

state_model:
player_boundary_class:
- full_participation
- limited_participation
- view_only
- admin_managed
- historical_only

validation_rules:
- boundary class is required.
- historical_only must not enable live control.
- view_only must not enable participation.
- admin_managed must declare controlling authority basis.

transition_rules:
- full_participation -> limited_participation
- limited_participation -> full_participation
- full_participation -> view_only
- any live boundary -> historical_only
- full_participation -> admin_managed

decision_matrix:
- full_participation -> observe and act within scope
- limited_participation -> bounded action only
- view_only -> observe only
- admin_managed -> administrative control path active
- historical_only -> replay/history only

failure_codes:
- PLAYER_BOUNDARY_CLASS_MISSING
- PLAYER_BOUNDARY_HISTORY_LIVE_CONFLICT
- PLAYER_BOUNDARY_VIEW_ACTION_CONFLICT
- PLAYER_BOUNDARY_ADMIN_AUTHORITY_MISSING

example_scenarios:
- A suspended player becomes view_only or historical_only depending on policy path.
- A managed account enters admin_managed boundary under explicit authority.
