# ============================================================
# STORY CORE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core implementation responsibilities for canonical story handling.

scope:
Covers story validation, stage selection,
branch evaluation, live-story projection,
replay/history reading, correction linkage,
and story trace emission.

design_intent:
Story implementation must make current progression explicit.
It must never silently mix replay with live delivery,
nor leak restricted branch data through summary projections.

implementation_components:
- story_input_validator
- story_scope_resolver
- current_stage_selector
- branch_condition_evaluator
- story_projection_filter
- story_replay_reader
- story_correction_linker
- story_trace_emitter

handler_contracts:
- validate_story_request(input) -> validation_result
- resolve_story_scope(scope_ref, story_type) -> scope_result
- select_current_story_stage(scope_result) -> stage_result
- evaluate_story_branches(stage_result, branch_context) -> branch_result
- project_story_for_consumer(stage_result, actor_scope) -> projection_result
- read_story_replay(scope_ref, replay_context) -> replay_result
- link_story_correction(current_story_ref, previous_revision_ref) -> correction_result
- emit_story_trace(event_type, context) -> trace_result

implementation_rules:
- Validation must occur before stage selection.
- Branch evaluation must occur before final projection.
- Public or bounded projections must run after branch evaluation.
- Replay readers must use history paths only.
- Corrections must preserve previous stage and branch lineage.
- Denied accesses and branch conflicts must emit trace and failure codes.

module_split:
- validator module
- stage selection module
- branch evaluation module
- projection filter module
- replay reader module
- correction linker module
- trace module

validation_rules:
- story_scope is required.
- story_type is required.
- actor_scope is required for filtered projection.
- replay_context is required for historical replay reads.
- correction requests require previous_revision_ref where applicable.

failure_codes:
- STORY_IMPL_SCOPE_MISSING
- STORY_IMPL_TYPE_MISSING
- STORY_IMPL_ACTOR_SCOPE_MISSING
- STORY_IMPL_CURRENT_STAGE_SELECTION_FAILED
- STORY_IMPL_BRANCH_EVALUATION_FAILED
- STORY_IMPL_REPLAY_CONTEXT_REQUIRED
- STORY_IMPL_CORRECTION_LINK_FAILED
- STORY_IMPL_TRACE_EMIT_FAILED

example_scenarios:
- A current story read validates scope, selects current stage, evaluates branch conditions, filters output, and emits a read trace.
- A replay request reads history chain only and never touches live current-stage selector.
