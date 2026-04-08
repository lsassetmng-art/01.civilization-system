# ============================================================
# WORLD STORY INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: story
subdomain: world-story
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines integration behavior for world-level stories.

scope:
Covers export of regional, city, nation,
or civilization story summaries and internal details,
plus historical replay and audit trace.

required_behavior:
- Support public-safe world-story summary export.
- Support internal world-story detail projection.
- Support historical replay export.
- Prevent public export of restricted internal strategy or hidden stage context.

projection_classes:
- public_world_story_summary
- internal_world_story_detail
- historical_world_story_replay
- audit_world_story_trace

validation_rules:
- world_ref is required.
- public summary must not leak restricted internal story implications.
- historical replay requires historical flag.

failure_codes:
- WORLD_STORY_INT_SCOPE_MISSING
- WORLD_STORY_INT_PUBLIC_DETAIL_VIOLATION
- WORLD_STORY_INT_HISTORICAL_FLAG_REQUIRED

example_scenarios:
- A civilization-wide festival story is exported publicly as summary only.
- Internal reviewers see deeper current world-story context.
