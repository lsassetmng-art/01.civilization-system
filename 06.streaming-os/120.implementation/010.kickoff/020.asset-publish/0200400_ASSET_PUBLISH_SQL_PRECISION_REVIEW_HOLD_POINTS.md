# ============================================================
# ASSET PUBLISH SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: asset-publish
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K2 SQL precision review.

hold_points:
- integer seconds vs higher precision numeric for duration and clip ranges
- text[] vs jsonb for category_tags
- final FK actions for archive/clip/session relations
- exact storage and constraint strategy for polymorphic publish_source_type + publish_source_id
- exact visibility_override storage/check strategy
- whether published_at and scheduled_publish_at need additional composite indexes
- exact projection/policy SQL split for public assets vs control-plane publish jobs

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K2 meaning-level design.
