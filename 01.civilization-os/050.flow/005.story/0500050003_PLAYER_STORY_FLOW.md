# ============================================================
# PLAYER STORY FLOW
# ============================================================

status: canonical
layer: flow
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for player-story handling.

scope:
Covers onboarding, role/career,
life-event-linked player stories,
player branch evaluation,
and replay-safe history delivery.

required_behavior:
- Bind player scope.
- Resolve current player story.
- Validate stage and onboarding exclusivity.
- Evaluate branch conditions.
- Deliver live or replay player story.

flow_state_model:
player_story_flow_state:
- requested
- player_bound
- story_resolved
- stage_validated
- branch_checked
- delivered
- replay_delivered
- blocked

player_story_sequence:
1. receive player-story request
2. bind player_ref
3. resolve active player story
4. validate stage
5. check onboarding or branch exclusivity
6. deliver live current story

replay_player_story_sequence:
1. receive replay request
2. bind player_ref
3. resolve historical chain
4. validate replay path
5. deliver replay story

failure_codes:
- PLAYER_STORY_FLOW_REF_MISSING
- PLAYER_STORY_FLOW_STAGE_INVALID
- PLAYER_STORY_FLOW_ONBOARDING_CONFLICT
- PLAYER_STORY_FLOW_REPLAY_CURRENT_CONFLICT

example_scenarios:
- A new player receives the next onboarding step.
- A past career story becomes available only through replay mode.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
