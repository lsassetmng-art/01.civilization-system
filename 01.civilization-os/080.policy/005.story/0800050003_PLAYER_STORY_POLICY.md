# ============================================================
# PLAYER STORY POLICY
# ============================================================

status: canonical
layer: policy
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for player-level stories.

scope:
Covers self-view narrative,
support-view narrative,
private branch protection,
and historical replay of player stories.

policy_focus:
- self-view versus others-view policy
- private branch confidentiality
- replay labeling
- prohibition of external overwrite of player progression story

disclosure_matrix:
- self_story_context -> self or authorized support only
- internal_support_story -> internal authorized only
- restricted_player_branch -> restricted
- historical_player_story_replay -> labeled historical only
- audit_player_story_trace -> audit_only

validation_rules:
- player_ref is required.
- self-view context must not leak to unrelated consumers.
- private branch context must remain restricted.
- historical replay must remain labeled and separate from live progression.

failure_codes:
- PLAYER_STORY_POLICY_REF_MISSING
- PLAYER_STORY_POLICY_SELF_SCOPE_DENIED
- PLAYER_STORY_POLICY_PRIVATE_BRANCH_VIOLATION
- PLAYER_STORY_POLICY_REPLAY_LABEL_REQUIRED

example_scenarios:
- A player's onboarding story may be visible to the player and authorized support, but not publicly.

required_behavior:
- define self-view and support-view limits
- protect private player branches
- preserve historical replay labeling for player stories

policy_rules:
- self story remains self-scoped unless support authority exists
- private branch data must remain restricted
- replay output must remain historical and non-live
