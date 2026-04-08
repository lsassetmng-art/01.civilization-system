# ============================================================
# STORY CORE OPERATIONS
# ============================================================

status: canonical
layer: operations
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core operational handling for story records.

scope:
Covers story preparation, stage activation,
branch review, pause, completion, cancellation,
replay preparation, correction, containment,
and historical audit.

design_intent:
Story operations must preserve continuity and meaning.
The same story cannot be simultaneously treated as
live-active and replay-historical in the same scope.
Operations exists to enforce that separation.

canonical_rules:
- Story stage activation must be explicit and traceable.
- Branch changes must preserve prior branch history.
- Completion and cancellation must preserve replay eligibility where applicable.
- Corrections must not erase prior story-stage evidence.
- Replay preparation must not mutate live story state.

required_behavior:
- Support story review and activation.
- Support branch review and correction.
- Support pause, completion, and cancellation.
- Support replay preparation and historical audit.
- Support containment of invalid live/history mixing.

state_model:
story_operational_state:
- prepared
- under_review
- active
- paused
- completed
- cancelled
- replay_ready
- contained
- archived

validation_rules:
- story_scope is required.
- active story must have valid current stage.
- completed or cancelled story must not remain live-active.
- replay_ready must preserve historical labeling.
- corrected story must maintain prior-state trace.

transition_rules:
- prepared -> under_review
- under_review -> active
- active -> paused
- paused -> active
- active -> completed
- active -> cancelled
- completed -> replay_ready
- cancelled -> replay_ready
- active -> contained
- replay_ready -> archived

operation_sequence:
1. prepare or select story
2. validate stage and branch state
3. review and apply activation or correction
4. pause, complete, cancel, or contain as needed
5. prepare replay path where applicable
6. preserve trace and history

failure_codes:
- STORY_OP_SCOPE_MISSING
- STORY_OP_STAGE_INVALID
- STORY_OP_BRANCH_CONFLICT
- STORY_OP_LIVE_HISTORY_MIX_DETECTED
- STORY_OP_HISTORY_TRACE_MISSING

example_scenarios:
- A story completes and moves into replay_ready with stage history intact.
- A live story with invalid branch conflict is contained for review.
