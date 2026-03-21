# ============================================================
# AUDIT LOG RULE
# ============================================================

status: canonical
scope: data
component: audit-log-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical audit log expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what should be auditable
- what minimal audit meaning should exist
- how structural traceability should be preserved
- what audit should not be mistaken for


# ============================================================
# CORE PRINCIPLE
# ============================================================

Audit exists to preserve traceability,
not merely to collect noise.

An audit log should help answer:

- what changed
- who or what caused it
- where it happened
- when it happened
- what result occurred


# ============================================================
# AUDITABLE CHANGE RULE
# ============================================================

The following should be auditable
when structurally relevant:

- source-of-truth mutation
- rights state change
- access state change
- boundary-sensitive sync event handling
- structural operational action
- security-sensitive validation result


# ============================================================
# MINIMUM AUDIT RULE
# ============================================================

Audit records should preserve
at least meaningful traceability for:

- actor or source
- action type
- scope or target
- time
- outcome

Additional fields may exist,
but traceability meaning must remain explicit.


# ============================================================
# NON-SUBSTITUTION RULE
# ============================================================

Audit does not replace source-of-truth data.

Audit records may describe a change,
but they do not become
the canonical domain state itself.


# ============================================================
# INTEGRITY RULE
# ============================================================

Audit logs should not be silently discarded,
rewritten, or structurally obscured
without explicit archival or retention handling.


# ============================================================
# FINAL RULE
# ============================================================

Audit must preserve structural traceability.

Audit is not noise collection.
Audit is change accountability.
