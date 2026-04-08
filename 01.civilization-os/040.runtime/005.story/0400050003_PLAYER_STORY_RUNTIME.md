# ============================================================
# PLAYER STORY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for player-level stories.

scope:
Covers onboarding story runtime,
career/role story progression,
player-specific branch evaluation,
and replay-safe historical story delivery.

runtime_rules:
- Runtime must resolve player story by player scope.
- Player replay story must not be delivered as active live story.
- Onboarding story must not conflict with stable progression delivery.
- Branch conditions must remain explicit.

required_behavior:
- Resolve active player story.
- Select current stage.
- Evaluate conditional branches.
- Deliver own-player story context safely.
- Support replay/history mode explicitly.

state_model:
player_story_runtime_state:
- unresolved
- onboarding_active
- current_stage_selected
- delivered
- replay_delivered
- blocked

validation_rules:
- player_ref is required.
- active player story needs valid stage.
- replay story must not appear in current live delivery.
- mutually exclusive onboarding branches require resolution.

transition_rules:
- unresolved -> onboarding_active
- onboarding_active -> current_stage_selected
- current_stage_selected -> delivered
- current_stage_selected -> replay_delivered
- invalid -> blocked

failure_codes:
- PLAYER_STORY_RT_REF_MISSING
- PLAYER_STORY_RT_STAGE_INVALID
- PLAYER_STORY_RT_ONBOARDING_CONFLICT
- PLAYER_STORY_RT_REPLAY_CURRENT_CONFLICT

example_scenarios:
- A player sees the next onboarding story step.
- A past career story is delivered only through replay mode.
