# PERSONA APPLY AUDIT OPERATIONS
status: canonical
layer: operations
system: persona-os
scope: persona-apply-audit-operations

Defines audit trace procedure for apply paths.

# ============================================================
# AUDIT EVIDENCE VS AUTHORITY RECORD
# ============================================================

Audit-visible traces related to VisualRuntime remain evidence,
not authority records.

Render logs, support traces, display events,
and runtime-side observations may be referenceable for audit,
but they must not silently replace:

- canonical mutation records
- canonical visual truth
- security verdict records
- governance decision records
- committed truth records

The following equivalences are prohibited:

- audit trace = authority truth
- render-side evidence = mutation truth
- display event = canonical authority record
- support trace = verdict record

Audit visibility may strengthen traceability,
but it must remain explicitly non-authoritative.

