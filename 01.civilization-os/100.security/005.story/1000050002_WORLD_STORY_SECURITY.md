# ============================================================
# WORLD STORY SECURITY
# ============================================================

status: canonical
layer: security
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines security rules for world-level stories.

scope:
Covers security for region, city,
nation, and civilization story disclosure,
including public summary,
internal strategy context,
and historical replay.

security_focus:
- public-safe summary protection
- internal strategic or staged context restriction
- replay/history access control
- prevention of internal world-story leakage through summary

actor_matrix:
- public_consumer -> world summary only
- internal_consumer -> internal world-story detail where authorized
- restricted_operator -> restricted operational story detail where authorized
- auditor -> historical world-story replay and traces where authorized

decision_table:
- public_consumer + world summary -> allow
- public_consumer + internal story detail -> block
- internal_consumer + internal detail -> allow where authorized
- auditor + historical replay -> allow only via history/audit authorization

validation_rules:
- world_ref is required.
- public projection must not leak internal strategy or hidden stage logic.
- historical replay requires replay/history authorization.

failure_codes:
- WORLD_STORY_SEC_WORLD_REF_MISSING
- WORLD_STORY_SEC_PUBLIC_DETAIL_DENIED
- WORLD_STORY_SEC_RESTRICTED_DETAIL_DENIED
- WORLD_STORY_SEC_REPLAY_ACCESS_DENIED

example_scenarios:
- A civilization-wide campaign may be publicly summarized without revealing internal decision stages.
