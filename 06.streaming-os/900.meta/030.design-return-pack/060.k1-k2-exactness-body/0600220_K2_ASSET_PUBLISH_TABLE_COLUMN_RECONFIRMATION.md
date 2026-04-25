# ============================================================
# K2 ASSET PUBLISH TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k1-k2-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K2 table/column exactness remains valid if persona-facing columns are read as:
- signed snapshot refs
- formal Persona result refs
- formal release/license/access refs
- local asset/publish operational state

allowed_column_meanings:
- signed_snapshot_ref
- result_event_ref
- release_ref
- license_ref
- access_ref

forbidden_column_meanings:
- persona_profile_reference as local canonical profile
- local rights canonical over persona identity
- local persona mutable mirror fields

result:
K2 table/column exactness remains reusable under publish/display reference reading.
