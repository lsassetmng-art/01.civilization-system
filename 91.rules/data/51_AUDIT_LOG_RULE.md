# ============================================================
# AUDIT LOG RULE
# ============================================================

status: canonical
scope: data
component: audit-log-rule

owner: Boss
prepared_by: Zero


# PURPOSE

Define audit logging requirements.


# RULES

Critical operations must be logged.
Audit records must be immutable where required.
Audit data must support investigation.


# FINAL RULE

No critical mutation without auditability.

