# ============================================================
# WORLD STORY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for world-level stories.

scope:
Covers activation, pause, completion,
cancellation, correction, and replay preparation
for region, city, nation, and civilization stories.

required_behavior:
- Support controlled stage changes for world stories.
- Support public-safe summary continuity during internal correction.
- Support replay preparation after completion or cancellation.
- Support containment of conflicting primary world stories.

state_model:
world_story_operational_state:
- prepared
- active
- paused
- completed
- cancelled
- replay_ready
- contained
- archived

validation_rules:
- world_ref is required.
- active current stage is required.
- conflicting primary world stories in same scope require containment.
- replay_ready requires preserved historical stage chain.

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
- WORLD_STORY_OP_SCOPE_MISSING
- WORLD_STORY_OP_STAGE_INVALID
- WORLD_STORY_OP_PRIMARY_CONFLICT
- WORLD_STORY_OP_HISTORY_CHAIN_MISSING

example_scenarios:
- A civilization-wide event story completes and is preserved for replay with full stage chain.
