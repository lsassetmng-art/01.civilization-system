# ============================================================
# STORY CORE FLOW
# ============================================================

status: canonical
layer: flow
domain: story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the core process flow for story handling.

scope:
Covers story request,
scope binding,
active story resolution,
stage validation,
branch evaluation,
live delivery,
replay delivery,
and rejection handling.

required_behavior:
- Bind story scope.
- Resolve active or historical story candidates.
- Validate current stage.
- Evaluate branch conditions.
- Deliver live or replay story path.
- Reject invalid live/history mixing.

flow_state_model:
story_flow_state:
- requested
- scope_bound
- candidates_resolved
- stage_validated
- branch_evaluated
- live_delivered
- replay_delivered
- blocked

live_story_sequence:
1. receive story request
2. bind canonical story scope
3. resolve active story candidate
4. validate current stage
5. evaluate branch conditions
6. confirm live stage
7. deliver live story context

replay_story_sequence:
1. receive replay request
2. bind canonical story scope
3. resolve historical story chain
4. validate replay eligibility
5. deliver replay story output

rejection_sequence:
1. detect missing scope or invalid stage
2. detect unmet branch condition or history/live conflict
3. assign failure code
4. block delivery

decision_matrix:
- active story + valid stage + valid branch -> live_delivered
- replay request + valid historical chain -> replay_delivered
- replay-only story + live request -> blocked
- invalid stage -> blocked
- linear-only + multiple active branches -> blocked

failure_codes:
- STORY_FLOW_SCOPE_MISSING
- STORY_FLOW_STAGE_INVALID
- STORY_FLOW_BRANCH_UNMET
- STORY_FLOW_REPLAY_CURRENT_CONFLICT
- STORY_FLOW_LIVE_HISTORY_MIX_DENIED

example_scenarios:
- A player onboarding story delivers the next stage after branch conditions are met.
- A completed city story is delivered only through replay flow.
