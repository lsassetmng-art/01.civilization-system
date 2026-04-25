# ============================================================
# K5 CORPORATE TABLE COLUMN RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k3-k6-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

table_column_rule:
K5 table/column exactness remains valid if persona-facing columns are read as:
- signed snapshot refs
- access/license/release refs
- affiliation refs
- corporate oversight operational columns

allowed_column_meanings:
- signed_snapshot_ref
- release_ref
- license_ref
- access_ref
- affiliation_ref
- channel_ref
- oversight_ref

forbidden_column_meanings:
- company-local persona canonical
- affiliation-owned persona mutable truth
- local persona profile canonical in corporate context

result:
K5 table/column exactness remains reusable under formal-reference reading.
