# ============================================================
# PROGRESS STORY FLOW
# ============================================================

status: canonical
layer: flow
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines process flow for progress-story handling.

scope:
Covers milestone-chain resolution,
guided completion,
bounded branching,
completion validation,
and replay-safe completed-chain delivery.

required_behavior:
- Bind progress-story scope.
- Resolve milestone chain.
- Select valid current milestone.
- Validate completion criteria.
- Deliver current progression or history-safe replay.

flow_state_model:
progress_story_flow_state:
- requested
- scope_bound
- chain_resolved
- milestone_selected
- completion_checked
- delivered
- replay_delivered
- blocked

progress_story_sequence:
1. receive progress-story request
2. bind canonical scope
3. resolve milestone chain
4. select current milestone
5. validate branch and completion criteria
6. deliver current progression

replay_progress_story_sequence:
1. receive replay request
2. bind canonical scope
3. resolve completed or cancelled chain
4. validate replay eligibility
5. deliver replay output

failure_codes:
- PROGRESS_STORY_FLOW_CHAIN_MISSING
- PROGRESS_STORY_FLOW_MILESTONE_INVALID
- PROGRESS_STORY_FLOW_COMPLETION_CRITERIA_MISSING
- PROGRESS_STORY_FLOW_HISTORY_LIVE_CONFLICT

example_scenarios:
- A guided completion story advances to the next valid milestone.
- A completed chain is only shown through replay mode.

validation_rules:
- canonical scope binding is required
- invalid or ambiguous state must block delivery
- live and historical paths must remain distinct where applicable

decision_matrix:
- valid request + valid scope + valid path -> deliver
- invalid scope or invalid state -> block
- historical request without history path -> block
- restricted path without authority where relevant -> block
