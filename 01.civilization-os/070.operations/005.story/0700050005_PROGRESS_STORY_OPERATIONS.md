# ============================================================
# PROGRESS STORY OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines operational handling for progress-focused stories.

scope:
Covers milestone updates,
guided completion control,
bounded branch correction,
completion handling,
and replay preparation for progress stories.

required_behavior:
- Support milestone advancement.
- Support bounded branch correction.
- Support completion and cancellation handling.
- Support replay preparation with milestone history preserved.

state_model:
progress_story_operational_state:
- prepared
- active
- paused
- completed
- cancelled
- replay_ready
- contained
- archived

validation_rules:
- milestone chain is required.
- current milestone must be valid.
- completed progress must preserve milestone history.
- historical replay must not overwrite current active progress.

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
- PROGRESS_STORY_OP_CHAIN_MISSING
- PROGRESS_STORY_OP_CURRENT_MILESTONE_INVALID
- PROGRESS_STORY_OP_HISTORY_OVERWRITE_DENIED

example_scenarios:
- A guided completion story advances milestones and preserves all prior milestones for replay.
