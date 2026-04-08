# ============================================================
# WORLD STORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for world-level stories.

scope:
Covers world-story stage lookup,
public-safe summary projection,
internal world-story detail projection,
replay/history reading,
and correction linkage.

implementation_focus:
- world_story_validator
- world_story_scope_resolver
- world_story_stage_selector
- world_story_public_projector
- world_story_internal_projector
- world_story_replay_reader
- world_story_trace_emitter

handler_contracts:
- resolve_world_story(world_ref, request_mode) -> world_story_result
- project_world_story_summary(world_story_result) -> public_summary
- project_world_story_internal(world_story_result, actor_scope) -> internal_detail
- read_world_story_replay(world_ref) -> replay_result

validation_rules:
- world_ref is required.
- public summary projection must suppress restricted internal stage semantics.
- replay reads must remain history-path only.

failure_codes:
- WORLD_STORY_IMPL_WORLD_REF_MISSING
- WORLD_STORY_IMPL_STAGE_SELECTION_FAILED
- WORLD_STORY_IMPL_PUBLIC_PROJECTION_FAILED
- WORLD_STORY_IMPL_REPLAY_READ_FAILED

example_scenarios:
- A city story may be summarized publicly while internal users receive richer stage context through separate projectors.

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
