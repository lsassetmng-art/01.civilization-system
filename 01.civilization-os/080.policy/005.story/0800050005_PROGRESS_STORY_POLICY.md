# ============================================================
# PROGRESS STORY POLICY
# ============================================================

status: canonical
layer: policy
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for progress-focused stories.

scope:
Covers milestone disclosure,
guided completion visibility,
historical milestone-chain replay,
and completion/cancellation retention.

policy_focus:
- current milestone versus historical milestone distinction
- bounded branch visibility
- completion criteria disclosure limits
- replay labeling and retention

disclosure_matrix:
- internal_current_progress -> internal or self as allowed
- summary_progress_view -> bounded safe projection
- historical_progress_replay -> labeled historical only
- audit_progress_trace -> audit_only

validation_rules:
- milestone chain reference is required.
- current progress must not be replaced by historical replay in live surfaces.
- bounded branch detail must follow visibility class.
- replay export must remain labeled historical.

failure_codes:
- PROGRESS_STORY_POLICY_CHAIN_REF_MISSING
- PROGRESS_STORY_POLICY_LIVE_HISTORY_CONFUSION
- PROGRESS_STORY_POLICY_BRANCH_VISIBILITY_VIOLATION
- PROGRESS_STORY_POLICY_REPLAY_LABEL_REQUIRED

example_scenarios:
- A guided completion path may show only the current milestone to a participant, while the full chain remains internal or historical.
