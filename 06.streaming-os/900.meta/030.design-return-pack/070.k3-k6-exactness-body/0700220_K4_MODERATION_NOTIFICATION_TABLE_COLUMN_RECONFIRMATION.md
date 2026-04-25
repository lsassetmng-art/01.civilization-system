# ============================================================
# K4 MODERATION NOTIFICATION TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K4 table/column exactness remains valid if persona-facing columns are read as:
- evidence linkage refs
- signed snapshot linkage refs
- result-event consume refs
- moderation / inbox / alert operational columns

allowed_column_meanings:
- persona_id
- signed_snapshot_ref
- result_event_id
- report_ref
- appeal_ref
- moderation_ref
- notification_ref

forbidden_column_meanings:
- moderation-owned persona mutable truth
- local persona memory or emotion truth
- direct mutation authority columns over Persona internals

result:
K4 table/column exactness remains reusable under moderation-linkage reading.
