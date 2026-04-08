# ============================================================
# PROGRESS STORY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: story
subdomain: progress-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for progress-focused stories.

scope:
Covers milestone progress export,
guided completion projection,
historical milestone-chain replay,
and safe summary projection for public-facing consumers.

required_behavior:
- Support current milestone export for internal consumers.
- Support summary progress export where allowed.
- Support replay-safe historical milestone-chain export.
- Prevent historical chain from being exported as current live progress.

projection_classes:
- internal_current_progress
- summary_progress_view
- historical_progress_replay
- audit_progress_trace

validation_rules:
- milestone chain reference is required.
- current progress export must identify valid current milestone.
- historical replay requires historical flag.
- historical chain must not be mistaken for current progress.

failure_codes:
- PROGRESS_STORY_INT_CHAIN_REF_MISSING
- PROGRESS_STORY_INT_CURRENT_MILESTONE_INVALID
- PROGRESS_STORY_INT_HISTORICAL_FLAG_REQUIRED
- PROGRESS_STORY_INT_LIVE_HISTORY_CONFUSION

example_scenarios:
- An internal training system receives the next current milestone.
- A completed milestone chain is exported only in replay form.
