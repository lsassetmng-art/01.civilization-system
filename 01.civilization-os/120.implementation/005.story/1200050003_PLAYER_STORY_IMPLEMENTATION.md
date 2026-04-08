# ============================================================
# PLAYER STORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for player-level stories.

scope:
Covers self-story resolution,
support-view projection,
private-branch enforcement,
replay/history reading,
and player-story correction.

implementation_focus:
- player_story_validator
- player_story_scope_resolver
- player_story_stage_selector
- self_story_filter
- support_story_filter
- private_branch_filter
- player_story_replay_reader
- player_story_trace_emitter

handler_contracts:
- resolve_player_story(player_ref, request_mode) -> player_story_result
- project_player_self_story(player_story_result, ownership_context) -> self_projection
- project_player_support_story(player_story_result, authority_context) -> support_projection
- read_player_story_replay(player_ref) -> replay_result

validation_rules:
- player_ref is required.
- ownership_context is required for self projection.
- authority_context is required for support projection where needed.
- private branches must remain filtered from unrelated consumers.

failure_codes:
- PLAYER_STORY_IMPL_PLAYER_REF_MISSING
- PLAYER_STORY_IMPL_OWNERSHIP_CONTEXT_REQUIRED
- PLAYER_STORY_IMPL_SUPPORT_AUTH_REQUIRED
- PLAYER_STORY_IMPL_PRIVATE_BRANCH_FILTER_FAILED
- PLAYER_STORY_IMPL_REPLAY_READ_FAILED

example_scenarios:
- A player sees their own onboarding story through self_story_filter, while support sees a bounded support-safe projection only.

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
