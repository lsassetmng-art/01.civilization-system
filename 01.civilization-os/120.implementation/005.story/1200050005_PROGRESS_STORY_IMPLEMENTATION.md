# ============================================================
# PROGRESS STORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for progress-focused stories.

scope:
Covers current milestone selection,
bounded-branch evaluation,
summary-safe milestone projection,
history/replay reading,
and completion lineage preservation.

implementation_focus:
- progress_story_validator
- milestone_chain_resolver
- current_milestone_selector
- bounded_branch_evaluator
- milestone_projection_filter
- progress_story_replay_reader
- progress_story_trace_emitter

handler_contracts:
- resolve_progress_story(progress_story_ref, request_mode) -> progress_story_result
- select_current_milestone(progress_story_result) -> milestone_result
- evaluate_bounded_branch(milestone_result, branch_context) -> branch_result
- read_progress_story_replay(progress_story_ref) -> replay_result

validation_rules:
- progress_story_ref or milestone_chain_ref is required.
- current_milestone selection must succeed before live projection.
- branch-restricted milestones must be filtered for unauthorized consumers.
- replay reads must use history path only.

failure_codes:
- PROGRESS_STORY_IMPL_REF_MISSING
- PROGRESS_STORY_IMPL_CURRENT_MILESTONE_FAILED
- PROGRESS_STORY_IMPL_BRANCH_EVALUATION_FAILED
- PROGRESS_STORY_IMPL_REPLAY_READ_FAILED

example_scenarios:
- A participant receives only the next milestone, while full chain replay remains available solely through replay reader.

required_behavior:
- validate canonical input before execution
- keep restricted and public paths separated where applicable
- preserve historical reads as separate from live execution

implementation_components:
- validator
- resolver or router
- filter or guard
- history reader
- trace emitter

module_split:
- input validation module
- execution module
- filtering or guard module
- history module
- trace module

implementation_rules:
- validation precedes execution
- filtering precedes delivery
- history paths remain distinct from live paths
- denied actions emit stable failure codes and trace
