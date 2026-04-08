# ============================================================
# PLAYER ROLE FLOW
# ============================================================

status: canonical
layer: flow
domain: player
subdomain: player-role
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for player role handling.

scope:
Covers primary role selection,
bounded secondary role coexistence,
authority-basis checks,
and role-conflict rejection.

required_behavior:
- Resolve primary role.
- Validate secondary role coexistence.
- Check authority basis for elevated roles.
- Deliver effective role set or block.

flow_state_model:
player_role_flow_state:
- requested
- roles_resolved
- primary_selected
- coexistence_checked
- delivered
- blocked

role_flow_sequence:
1. receive role request
2. resolve role candidates
3. select primary role
4. validate secondary coexistence
5. check elevated authority basis where needed
6. deliver effective role set

failure_codes:
- PLAYER_ROLE_FLOW_PRIMARY_MISSING
- PLAYER_ROLE_FLOW_CONFLICT
- PLAYER_ROLE_FLOW_AUTHORITY_REQUIRED
- PLAYER_ROLE_FLOW_SUSPENDED_EFFECT_DENIED

example_scenarios:
- A worker role is selected and resident is retained as bounded secondary context.
- An operator role is blocked because no authority basis exists.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
