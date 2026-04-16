# PERSONA REJECT INVESTIGATION OPERATIONS
status: canonical
layer: operations
system: persona-os
scope: persona-reject-investigation-operations

Defines investigation procedure for rejected events.

# ============================================================
# INVESTIGATION EVIDENCE VS AUTHORITY REJECTION
# ============================================================

Rejection investigation semantics must preserve
strict separation between investigated evidence
and authority-layer rejection truth.

VisualRuntime-related anomalies may appear as:
- render failures
- output issues
- display anomalies
- fallback behavior
- performance degradation
- runtime instability

However, these do not automatically imply:
- governance denial
- security rejection
- canonical rejection
- committed mutation failure

The following equivalences are prohibited:

- runtime anomaly = authority reject truth
- render failure = canonical rejection
- support investigation result = governance/security verdict
- local symptom = canonical mutation failure

Investigation output must remain evidence-scoped
unless an explicit authority record confirms otherwise.

