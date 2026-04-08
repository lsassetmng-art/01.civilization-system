# ============================================================
# PLAYER STORY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for player-level stories.

scope:
Covers onboarding story operation,
career or role story progression,
branch correction, completion,
and historical replay preparation.

required_behavior:
- Support player story activation and correction.
- Support onboarding branch handling.
- Support completion and replay preparation.
- Support containment of invalid exclusive player-story states.

state_model:
player_story_operational_state:
- prepared
- active
- paused
- completed
- cancelled
- replay_ready
- contained
- archived

validation_rules:
- player_ref is required.
- active current stage is required.
- mutually exclusive onboarding branches in same scope require containment.
- replay_ready requires preserved historical story path.

transition_rules:
- prepared -> active
- active -> paused
- paused -> active
- active -> completed
- active -> cancelled
- completed -> replay_ready
- cancelled -> replay_ready
- active -> contained
- replay_ready -> archived

failure_codes:
- PLAYER_STORY_OP_REF_MISSING
- PLAYER_STORY_OP_STAGE_INVALID
- PLAYER_STORY_OP_ONBOARDING_CONFLICT
- PLAYER_STORY_OP_HISTORY_PATH_MISSING

example_scenarios:
- A player onboarding story is corrected after a branch issue and continues with preserved history.
