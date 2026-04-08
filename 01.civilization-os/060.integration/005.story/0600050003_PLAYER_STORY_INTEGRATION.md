# ============================================================
# PLAYER STORY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for player-level stories.

scope:
Covers self-view player story export,
internal support-view player story projection,
historical player-story replay,
and protection of branch/private narrative context.

required_behavior:
- Support player-self story projection where allowed.
- Support internal support or audit projection where authorized.
- Support replay-safe historical player-story export.
- Prevent unauthorized export of private branch context.

projection_classes:
- self_story_context
- internal_support_story
- historical_player_story_replay
- audit_player_story_trace

validation_rules:
- player_ref is required.
- self projection must remain within allowed self-view scope.
- replay export requires historical flag.
- private branch detail must not be exported outside authorized scope.

failure_codes:
- PLAYER_STORY_INT_REF_MISSING
- PLAYER_STORY_INT_SELF_SCOPE_DENIED
- PLAYER_STORY_INT_PRIVATE_BRANCH_VIOLATION
- PLAYER_STORY_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- A player sees their current onboarding story context.
- An audit viewer receives replay-safe player story history.
