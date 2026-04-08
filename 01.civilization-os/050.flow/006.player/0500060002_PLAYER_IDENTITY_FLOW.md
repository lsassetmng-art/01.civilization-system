# ============================================================
# PLAYER IDENTITY FLOW
# ============================================================

status: canonical
layer: flow
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for player identity handling.

scope:
Covers identity bind resolution,
verification path,
suspended identity path,
and ambiguity rejection.

required_behavior:
- Bind identity scope.
- Resolve active identity relation.
- Validate verification or suspension status.
- Reject ambiguity.
- Support historical identity inspection.

flow_state_model:
player_identity_flow_state:
- requested
- identity_bound
- binding_resolved
- verified
- suspended
- historical_delivered
- blocked

identity_flow_sequence:
1. receive player identity request
2. bind identity_ref
3. resolve current binding
4. validate verified or suspended state
5. deliver verified binding or block live use

failure_codes:
- PLAYER_ID_FLOW_REF_MISSING
- PLAYER_ID_FLOW_BINDING_CONFLICT
- PLAYER_ID_FLOW_SUSPENDED_LIVE_DENIED
- PLAYER_ID_FLOW_HISTORY_PATH_INVALID

example_scenarios:
- A verified identity proceeds to live player flow.
- A suspended identity halts live participation immediately.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
