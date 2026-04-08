# ============================================================
# PLAYER BOUNDARY FLOW
# ============================================================

status: canonical
layer: flow
domain: player
subdomain: player-boundary
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for player-boundary handling.

scope:
Covers full, limited, view-only,
admin-managed, and historical-only boundary flows.

required_behavior:
- Resolve boundary class.
- Apply action/view gating.
- Separate admin-managed and historical-only paths.
- Block live action when boundary forbids it.

flow_state_model:
player_boundary_flow_state:
- requested
- boundary_resolved
- action_gate_checked
- view_gate_checked
- delivered
- historical_delivered
- blocked

boundary_flow_sequence:
1. receive boundary request
2. resolve effective boundary
3. check requested action/view against boundary
4. deliver allowed path or block

decision_matrix:
- full_participation -> action and view allowed within scope
- limited_participation -> bounded action only
- view_only -> action denied, view allowed
- admin_managed -> control redirected to authorized admin path
- historical_only -> history only

failure_codes:
- PLAYER_BOUNDARY_FLOW_CLASS_MISSING
- PLAYER_BOUNDARY_FLOW_ACTION_DENIED
- PLAYER_BOUNDARY_FLOW_ADMIN_AUTH_REQUIRED
- PLAYER_BOUNDARY_FLOW_HISTORY_LIVE_DENIED

example_scenarios:
- A view-only player may inspect allowed surfaces but cannot act.
- An admin-managed account routes control attempts to authorized administration path.
