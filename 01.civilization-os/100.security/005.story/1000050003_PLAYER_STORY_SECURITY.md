# ============================================================
# PLAYER STORY SECURITY
# ============================================================

status: canonical
layer: security
domain: story
subdomain: player-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for player-level stories.

scope:
Covers self-scoped story access,
support-scoped access,
private branch control,
and historical replay security for player stories.

security_focus:
- ownership verification for self-story access
- prevention of private branch leakage
- support-role bounded access
- replay and audit access separation

actor_matrix:
- self_consumer -> own self-story only
- support_operator -> authorized support-context story access
- internal_consumer -> internal player-story detail where policy allows
- auditor -> replay/audit traces where authorized

decision_table:
- self_consumer + own story -> allow
- self_consumer + other player's story -> block
- support_operator + private branch -> allow only with support authority
- auditor + replay trace -> allow only through history/audit scope

validation_rules:
- player_ref is required.
- self-story access requires ownership match.
- support access requires explicit support authority where needed.
- private branches must not be exposed to unrelated consumers.
- replay path must remain separated from current live path.

failure_codes:
- PLAYER_STORY_SEC_PLAYER_REF_MISSING
- PLAYER_STORY_SEC_OWNERSHIP_MISMATCH
- PLAYER_STORY_SEC_SUPPORT_AUTH_REQUIRED
- PLAYER_STORY_SEC_PRIVATE_BRANCH_DENIED
- PLAYER_STORY_SEC_REPLAY_ACCESS_DENIED

example_scenarios:
- A player may view their current onboarding branch, but another player cannot.
- Support staff may view a bounded support-safe version, not unrestricted private branch detail.
