# ============================================================
# DATA RETENTION RULE
# ============================================================

status: canonical
scope: data
component: data-retention-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical retention expectations
for data and retained artifacts
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- why retention matters
- how active, archived, and temporary data differ
- how retention should preserve structural meaning
- how cleanup should avoid silent loss of important history


# ============================================================
# CORE PRINCIPLE
# ============================================================

Retention must preserve structural meaning.

Not all data must remain active,
but important history must not be silently erased.


# ============================================================
# DATA CLASS RULE
# ============================================================

Retention handling should distinguish between:

## Active canonical data
Current authoritative material still in active use.

## Archived historical data
Retained history that is no longer active,
but still useful for traceability, rollback awareness,
or historical reference.

## Temporary support material
Generated lists, dumps, helper outputs,
migration notes, or review artifacts
that may be safely discarded when no longer needed.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archive preserves history,
not active authority.

Archived material may remain useful,
but active canonical meaning must stay explicit.


# ============================================================
# CLEANUP RULE
# ============================================================

Cleanup is allowed for temporary support material.

Examples include:

- active file lists
- temporary full dumps
- transient migration helpers
- temporary generated inspection outputs

Cleanup must not silently remove
active canonical rules or required historical traceability.


# ============================================================
# RETENTION DECISION RULE
# ============================================================

Before deletion, retention handling should consider:

- is this authoritative
- is this archival history
- is this only temporary support material
- would deletion erase structural traceability
- would archive be more appropriate than delete


# ============================================================
# FINAL RULE
# ============================================================

Retention must preserve structural meaning.

Archive what preserves history.
Delete what is truly temporary.
Do not erase authoritative or historically meaningful material casually.
