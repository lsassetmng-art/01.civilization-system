# ============================================================
# KICKOFF SQL CONTRADICTION AGGREGATION LEDGER
# ============================================================

status: canonical-ledger
layer: implementation
domain: kickoff
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
Aggregates true contradictions discovered during K1-K6 SQL precision review.

entry_template:
- aggregate_id
- domain
- local_contradiction_id
- summary
- severity
- impact_scope
- required_resolution_path
- resolution_note

seed_state:
- no aggregated contradictions recorded yet

aggregation_rule:
- only true contradictions are aggregated here
- wording-only cleanup is excluded
- style-only SQL preference is excluded
- transport-only precision is excluded

promotion_block_rule:
- any unresolved high-severity contradiction blocks DDL draft promotion for the affected domain
