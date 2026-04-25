# ============================================================
# FOUNDATION SQL PRECISION REVIEW HOLD POINTS
# ============================================================

status: canonical-hold-points
layer: implementation
domain: foundation
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Identifies the exact hold points that must be confirmed in K1 SQL precision review.

hold_points:
- lower(handle) unique index vs alternative normalized uniqueness strategy
- final FK action for streaming_sessions.principal_id
- whether display_name needs explicit length cap
- whether bio stays plain text or needs structured-search support later
- exact lifecycle/check constraint implementation shape
- whether lifecycle/schedule indexes should include composite or partial forms
- exact audit table strategy for transition and support-path events

hold_severity:
- blocking_for_ddl_if_unresolved: yes

note:
These are precision hold points only.
They do not reopen K1 meaning-level design.
