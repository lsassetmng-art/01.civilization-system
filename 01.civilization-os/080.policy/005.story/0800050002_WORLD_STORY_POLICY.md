# ============================================================
# WORLD STORY POLICY
# ============================================================

status: canonical
layer: policy
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines policy rules for world-level stories.

scope:
Covers region, city, nation,
and civilization story disclosure and retention rules.

policy_focus:
- public-safe world-story summary
- restricted internal strategy or stage context
- mandatory historical retention after completion or cancellation
- prohibition of live/history confusion in public communication

disclosure_matrix:
- public_world_story_summary -> public allowed
- internal_world_story_detail -> internal only
- restricted_world_story_detail -> restricted
- historical_world_story_replay -> labeled historical only
- audit_world_story_trace -> audit_only

validation_rules:
- world_ref is required.
- public summary must not leak restricted planning or hidden stage logic.
- completed/cancelled world story must move to historical-required retention.
- replay output must remain labeled.

failure_codes:
- WORLD_STORY_POLICY_SCOPE_MISSING
- WORLD_STORY_POLICY_PUBLIC_DETAIL_VIOLATION
- WORLD_STORY_POLICY_HISTORY_REQUIRED
- WORLD_STORY_POLICY_REPLAY_LABEL_REQUIRED

example_scenarios:
- A civilization-wide reform storyline may be summarized publicly without exposing internal control logic.
