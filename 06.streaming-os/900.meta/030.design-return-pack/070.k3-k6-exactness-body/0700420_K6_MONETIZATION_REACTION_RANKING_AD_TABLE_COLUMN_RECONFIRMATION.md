# ============================================================
# K6 MONETIZATION REACTION RANKING AD TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K6 table/column exactness remains valid if persona-facing columns are read as:
- target persona refs
- signed snapshot refs
- result-event refs
- local reaction / tipping / ranking / ad operational columns

allowed_column_meanings:
- target_persona_id
- signed_snapshot_ref
- result_event_id
- local reaction intensity fields
- local tipping limit fields
- local stop flag fields

forbidden_column_meanings:
- persona emotional canonical
- persona profile canonical as local truth
- local persona mutable mirror fields

result:
K6 table/column exactness remains reusable under Streaming-local operational reading.
