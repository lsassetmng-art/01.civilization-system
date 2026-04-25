# ============================================================
# CREATOR VIEWER SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: creator-viewer-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K3 SQL precision review.

hold_points:
- jsonb vs structured columns for creator preference families
- target_type + target_id storage strategy across follow/history/collections
- exact uniqueness scope for playlist and watch queue ordering
- whether item_id always remains uuid-addressable across all intended families
- exact retention/compaction strategy impact on search and watch history indexing
- exact shared playlist projection SQL strategy
- exact runtime repair mutation boundary for watch queue state

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K3 meaning-level design.
