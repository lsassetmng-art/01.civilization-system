# ============================================================
# PLAYER CORE FLOW
# ============================================================

status: canonical
layer: flow
domain: player
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the core process flow for player handling.

scope:
Covers player request,
identity binding,
lifecycle validation,
role selection,
progress selection,
boundary enforcement,
live participation delivery,
and historical inspection.

required_behavior:
- Bind player or identity scope.
- Resolve active player record.
- Validate lifecycle.
- Resolve role, progress, and boundary in order.
- Deliver live participation, view-only, or historical path.
- Reject invalid active participation.

flow_state_model:
player_flow_state:
- requested
- scope_bound
- identity_resolved
- lifecycle_checked
- role_resolved
- progress_resolved
- boundary_checked
- live_delivered
- view_only_delivered
- historical_delivered
- blocked

live_player_sequence:
1. receive player request
2. bind player_id or identity_ref
3. resolve identity binding
4. validate lifecycle
5. resolve role
6. resolve progress
7. enforce boundary
8. deliver live participation or view-only result

historical_player_sequence:
1. receive historical request
2. bind player scope
3. resolve archived/historical record
4. validate history path
5. deliver historical output

rejection_sequence:
1. detect missing identity or invalid lifecycle
2. detect invalid role/progress/boundary combination
3. assign failure code
4. block live participation

decision_matrix:
- active + valid identity + valid role/progress/boundary -> live_delivered
- limited + valid boundary -> live_delivered with bounded effect
- suspended -> blocked for live
- archived/historical_only + history request -> historical_delivered
- view_only boundary -> view_only_delivered

failure_codes:
- PLAYER_FLOW_SCOPE_MISSING
- PLAYER_FLOW_IDENTITY_INVALID
- PLAYER_FLOW_LIFECYCLE_INVALID
- PLAYER_FLOW_ROLE_MISSING
- PLAYER_FLOW_PROGRESS_INVALID
- PLAYER_FLOW_BOUNDARY_INVALID
- PLAYER_FLOW_HISTORY_LIVE_CONFLICT

example_scenarios:
- A standard active player is allowed live participation.
- A suspended player is blocked from live participation and routed to history/view path only if requested.
