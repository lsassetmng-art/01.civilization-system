# ============================================================
# DATABASE SCHEMA RULE
# ============================================================

status: canonical
scope: data
component: database-schema-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical database schema expectations
across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- schema clarity expectations
- source-of-truth boundary preservation
- structural naming consistency
- schema stability principles


# ============================================================
# CORE PRINCIPLE
# ============================================================

Database schema is part of structural truth.

Schema must not become an accidental mixture
of unrelated ownership, unstable naming,
or convenience-driven cross-boundary mutation.


# ============================================================
# SCHEMA BOUNDARY RULE
# ============================================================

Schemas should preserve source-of-truth boundaries.

A schema must not silently absorb
unrelated domain ownership
for short-term convenience.

Mirrored state may exist,
but mirrored state must not be confused
with authoritative ownership.


# ============================================================
# STRUCTURE RULE
# ============================================================

Database schemas should be:

- explicit
- attributable
- stable
- boundary-aware
- reviewable

Table meaning, ownership meaning,
and mutation meaning should remain clear.


# ============================================================
# NAMING RULE
# ============================================================

Schema naming should remain structurally meaningful.

Table, field, and schema naming should avoid:

- temporary wording
- UI-only meaning
- overloaded ambiguity
- misleading reuse of old names


# ============================================================
# CHANGE RULE
# ============================================================

Schema change must be deliberate.

Structural schema changes include:

- ownership move
- boundary split or merge
- primary meaning change
- identifier meaning change
- mirrored/authoritative role change

Such changes require explicit migration awareness.


# ============================================================
# FINAL RULE
# ============================================================

Database schema must preserve structural truth.

Storage convenience must not override
boundary clarity, ownership clarity,
or stable naming meaning.
