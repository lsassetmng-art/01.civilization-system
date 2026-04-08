# ============================================================
# EVENT STORY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
subdomain: event-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines implementation responsibilities for event-linked stories.

scope:
Covers event-story resolution,
live current-stage projection,
public campaign summary projection,
history/replay reading,
and completion/cancellation-safe handling.

implementation_focus:
- event_story_validator
- event_story_scope_resolver
- event_story_stage_selector
- event_story_public_projector
- event_story_internal_projector
- event_story_replay_reader
- event_story_trace_emitter

handler_contracts:
- resolve_event_story(event_ref, cluster_ref, request_mode) -> event_story_result
- project_event_story_public(event_story_result) -> public_projection
- project_event_story_internal(event_story_result, actor_scope) -> internal_projection
- read_event_story_replay(event_ref, cluster_ref) -> replay_result

validation_rules:
- event_ref or cluster_ref is required.
- public projection must not leak restricted internal response steps.
- completed or cancelled stories must use replay/history reader for historical output.

failure_codes:
- EVENT_STORY_IMPL_REF_MISSING
- EVENT_STORY_IMPL_STAGE_SELECTION_FAILED
- EVENT_STORY_IMPL_PUBLIC_PROJECTION_FAILED
- EVENT_STORY_IMPL_REPLAY_READ_FAILED

example_scenarios:
- A live campaign shows safe summary publicly and detailed response narrative internally through separate projectors.

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
