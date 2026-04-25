# ============================================================
# KICKOFF DDL REVIEW BLOCKER AGGREGATION LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: kickoff
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Aggregates blockers that prevent promotion from SQL precision review into DDL review.

entry_template:
- blocker_id
- domain
- blocker_type
- summary
- severity
- promotion_impact
- required_resolution_path
- resolution_note

seed_state:
- no DDL review blockers aggregated yet

aggregation_rule:
- unresolved SQL contradiction may be aggregated here
- unresolved DDL entry hold point may be aggregated here
- wording-only cleanup must not be aggregated here
- formatting-only style issues must not be aggregated here

promotion_rule:
- any unresolved high-severity blocker blocks DDL review start for the affected domain
