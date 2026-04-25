# ============================================================
# K3 CREATOR VIEWER TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K3 table/column exactness remains valid if persona-facing columns are read as:
- performer assignment refs
- signed snapshot linkage columns
- request/result consume log columns
- creator/viewer local operational columns

allowed_column_meanings:
- persona_id
- performer_persona_id
- snapshot_id
- applied_snapshot_id
- request_event_id
- result_event_id

forbidden_column_meanings:
- performer binding truth as persona internal truth
- local persona mutable mirror column
- local persona profile canonical column

result:
K3 table/column exactness remains reusable under creator/viewer-local reading.
