# ============================================================
# PROGRESS STORY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines progression-focused story architecture.

scope:
Covers stories whose primary role is to structure milestone progression,
goal advancement, guided completion,
and staged reveal across world, player, or system scopes.

design_intent:
Progress story focuses on advancement logic and milestone meaning,
rather than broad narrative context alone.

canonical_rules:
- Progress story must define milestones.
- Progress story must define completion criteria.
- Progress story must define whether branching is allowed.
- Progress story must preserve incomplete and historical states separately.

required_behavior:
- Support linear milestone progression.
- Support bounded milestone branching.
- Support completion and abandonment states.
- Support historical replay.

state_model:
progress_story_class:
- linear_progress
- bounded_branch_progress
- guided_completion
- milestone_chain

validation_rules:
- milestone chain is required.
- completion criteria are required.
- active progress story must point to valid milestone.
- historical completed progress must not be re-exposed as incomplete current story.

transition_rules:
- planned -> active
- active -> paused
- active -> completed
- active -> cancelled
- completed -> historical

failure_codes:
- PROGRESS_STORY_MILESTONE_CHAIN_MISSING
- PROGRESS_STORY_COMPLETION_CRITERIA_MISSING
- PROGRESS_STORY_CURRENT_MILESTONE_INVALID
- PROGRESS_STORY_HISTORY_CURRENT_CONFLICT

example_scenarios:
- A training path uses a milestone_chain story with bounded branching.
- A city recovery plan uses guided_completion story stages and completion criteria.
