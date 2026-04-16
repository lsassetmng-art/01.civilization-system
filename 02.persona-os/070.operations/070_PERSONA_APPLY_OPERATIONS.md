# PERSONA APPLY OPERATIONS
status: canonical
layer: operations
system: persona-os
scope: persona-apply-operations

Defines apply operations and incident handling.

# ============================================================
# OPERATIONS EVIDENCE VS CANONICAL RESULT
# ============================================================

VisualRuntime-related operations artifacts must remain
support evidence only.

Diagnostics, render logs, performance traces,
fallback traces, and operator-visible issues
may improve observability and recovery,
but they do not become:

- canonical Persona truth
- canonical visual truth
- governance truth
- security verdict truth
- committed mutation truth

The following equivalences are prohibited:

- diagnostics trace = canonical result
- render log = canonical visual truth
- performance success = canonical completion
- runtime error log = security verdict
- operator-visible issue = authority record

Operations wording must remain support-scoped
and must not overclaim authority.

