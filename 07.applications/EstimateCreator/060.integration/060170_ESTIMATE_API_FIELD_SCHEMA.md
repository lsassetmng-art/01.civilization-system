# ============================================================
# ESTIMATE API FIELD SCHEMA
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Field schema must preserve explicit nullability,
explicit required fields,
and explicit type boundaries.

Schema design must avoid ambiguous fields that mix:

- local state
- sync state
- publication state
- authority state

