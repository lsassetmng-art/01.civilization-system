# ============================================================
# PLAYER PROGRESS FLOW
# ============================================================

status: canonical
layer: flow
domain: player
subdomain: player-progress
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for player progression handling.

scope:
Covers stage resolution,
onboarding progression,
restricted progression enforcement,
and historical progression delivery.

required_behavior:
- Resolve current progress stage.
- Enforce onboarding behavior where applicable.
- Enforce restricted progression constraints.
- Support historical progression replay.

flow_state_model:
player_progress_flow_state:
- requested
- stage_resolved
- onboarding_checked
- restriction_checked
- delivered
- historical_delivered
- blocked

progress_flow_sequence:
1. receive progress request
2. resolve current stage
3. apply onboarding-specific path if relevant
4. apply restricted-stage constraints if relevant
5. deliver effective progress context

failure_codes:
- PLAYER_PROGRESS_FLOW_STAGE_MISSING
- PLAYER_PROGRESS_FLOW_STAGE_INVALID
- PLAYER_PROGRESS_FLOW_RESTRICTED_SCOPE_CONFLICT
- PLAYER_PROGRESS_FLOW_HISTORY_LIVE_CONFLICT

example_scenarios:
- A new player is routed through onboarding-specific progression flow.
- A restricted player is prevented from using advanced participation path.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
