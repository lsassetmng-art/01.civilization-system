# ============================================================
# K1 FOUNDATION TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k1-k2-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K1 table/column exactness remains valid if persona-facing columns are read as:
- reference columns
- signed snapshot linkage columns
- request/result consume log columns
- local operational columns

allowed_column_meanings:
- persona_id
- snapshot_id
- applied_snapshot_id
- request_event_id
- result_event_id

forbidden_column_meanings:
- trust_score as local persona truth
- trust_level as local persona truth
- growth state as local persona truth
- any local persona mutable mirror column

result:
K1 table/column exactness remains reusable without reopening the full body.
