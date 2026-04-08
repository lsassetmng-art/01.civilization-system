# ============================================================
# PROGRESS STORY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for progression-focused stories.

scope:
Covers milestone selection, guided completion,
bounded branching, completion validation,
and replay-safe historical milestone chains.

runtime_rules:
- Runtime must resolve current milestone from valid chain.
- Completion criteria must be checked before completion state delivery.
- Historical completed milestones must not be delivered as incomplete live state.
- Bounded branch conditions must be explicit.

required_behavior:
- Resolve current milestone.
- Support milestone-chain delivery.
- Support completion and cancellation paths.
- Support history-safe replay.

state_model:
progress_story_runtime_state:
- unresolved
- milestone_selected
- guided_active
- completed
- cancelled
- replay_delivered
- blocked

validation_rules:
- milestone chain is required.
- current milestone must exist in chain.
- completion criteria are required for completed state.
- historical milestones must not replace live current milestone.

transition_rules:
- unresolved -> milestone_selected
- milestone_selected -> guided_active
- guided_active -> completed
- guided_active -> cancelled
- completed -> replay_delivered
- cancelled -> replay_delivered

failure_codes:
- PROGRESS_STORY_RT_CHAIN_MISSING
- PROGRESS_STORY_RT_CURRENT_MILESTONE_INVALID
- PROGRESS_STORY_RT_COMPLETION_CRITERIA_MISSING
- PROGRESS_STORY_RT_HISTORY_LIVE_CONFLICT

example_scenarios:
- A guided completion path selects the next valid milestone.
- A completed milestone chain is exposed only through replay mode.
