# ============================================================
# WORLD STORY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for world-level stories.

scope:
Covers active world-story resolution,
regional or civilization-wide stage delivery,
public-safe summary delivery,
and historical world-story replay.

runtime_rules:
- Runtime must resolve world story by world scope.
- World story must not override world-state truth.
- Public delivery must use public-safe story projection.
- Historical world stories must remain replay-only unless explicitly current.

required_behavior:
- Resolve active world story.
- Deliver public-safe summary.
- Deliver internal richer current stage where allowed.
- Support historical replay by explicit mode.

state_model:
world_story_runtime_state:
- unresolved
- active_stage_selected
- public_summary_delivered
- internal_stage_delivered
- historical_replay_delivered
- blocked

validation_rules:
- world_ref is required.
- current world story stage must be valid.
- conflicting primary world stories in same scope require resolution.
- public projection must not leak restricted internal context.

transition_rules:
- unresolved -> active_stage_selected
- active_stage_selected -> public_summary_delivered
- active_stage_selected -> internal_stage_delivered
- active_stage_selected -> historical_replay_delivered
- invalid -> blocked

failure_codes:
- WORLD_STORY_RT_SCOPE_MISSING
- WORLD_STORY_RT_STAGE_INVALID
- WORLD_STORY_RT_PRIMARY_CONFLICT
- WORLD_STORY_RT_PUBLIC_PROJECTION_VIOLATION

example_scenarios:
- Residents see a city reconstruction story summary.
- Internal operators see the active operational stage and dependencies.
