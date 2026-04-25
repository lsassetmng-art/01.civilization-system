# ============================================================
# CORPORATE SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K5 SQL precision review.

hold_points:
- uuid nullable strategy for company_id on channel_records
- exact handle uniqueness scope and normalization strategy for channel_handle, if uniqueness is introduced
- jsonb vs structured columns for oversight summary families
- uniqueness scope for affiliated streamer references across active/inactive lifecycle possibilities
- exact FK actions for company/channel/principal linkage
- exact projection SQL split for public, oversight-safe, and limited self-related affiliation reads
- exact support-path audit linkage storage strategy

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K5 meaning-level design.
