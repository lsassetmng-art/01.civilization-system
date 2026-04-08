# ============================================================
# PLAYER BOUNDARY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for player participation boundaries.

scope:
Covers enforcement of live participation,
limited participation,
view-only mode,
administrative management,
and historical-only access.

runtime_rules:
- Runtime must enforce player boundary before action delivery.
- view_only must not permit active participation.
- historical_only must not permit live control.
- admin_managed must require controlling authority basis.

required_behavior:
- Resolve effective boundary.
- Enforce boundary on actions and views.
- Distinguish live control from historical observation.
- Emit explicit denial when action exceeds boundary.

state_model:
player_boundary_runtime_state:
- full_participation
- limited_participation
- view_only
- admin_managed
- historical_only
- blocked

validation_rules:
- boundary class is required.
- view_only must block act path.
- historical_only must block live control path.
- admin_managed requires authority basis.

transition_rules:
- full_participation -> limited_participation
- limited_participation -> full_participation
- any live state -> view_only
- any live state -> admin_managed
- any state -> historical_only for replay/history

failure_codes:
- PLAYER_BOUNDARY_RT_CLASS_MISSING
- PLAYER_BOUNDARY_RT_VIEW_ACTION_DENIED
- PLAYER_BOUNDARY_RT_HISTORY_LIVE_DENIED
- PLAYER_BOUNDARY_RT_ADMIN_AUTH_REQUIRED

example_scenarios:
- A managed player account is blocked from self-directed control but may remain viewable.
- A historical-only account is visible in replay mode only.
