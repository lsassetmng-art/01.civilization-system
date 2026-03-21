# ============================================================
# SQL EXECUTION STANDARD
# ============================================================

status: canonical
scope: development
component: sql-execution-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical SQL execution standard
for direct CLI execution in the Civilization System workflow.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- approved SQL execution style
- required one-block execution pattern
- non-interactive execution requirement
- explicit environment-bound execution


# ============================================================
# CORE PRINCIPLE
# ============================================================

SQL execution must be explicit,
copy-paste runnable,
and deterministic.

Interactive ambiguity is discouraged
for canonical operational scripts.


# ============================================================
# ERP-SIDE EXECUTION RULE
# ============================================================

ERP-side SQL execution must use:

psql "$DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# PERSONA/CIVILIZATION-SIDE EXECUTION RULE
# ============================================================

Persona/Civilization-side SQL execution must use:

psql "$PERSONA_DATABASE_URL" <<'SQL'
...
SQL


# ============================================================
# REQUIRED STYLE RULE
# ============================================================

Canonical SQL execution must be:

- single execution block
- environment-bound
- non-interactive
- reviewable before execution
- deterministic in target selection


# ============================================================
# FORBIDDEN STYLE RULE
# ============================================================

The following are discouraged or prohibited
for canonical workflow use:

- interactive ad hoc SQL sessions as primary standard
- hidden target database selection
- split execution where target context becomes ambiguous
- direct credential embedding inside SQL execution blocks


# ============================================================
# TERMUX RULE
# ============================================================

When SQL is intended for Termux execution,
it should be provided in directly executable form
with explicit target environment variable usage.


# ============================================================
# FINAL RULE
# ============================================================

Canonical SQL execution must use
a single explicit psql block
bound to the correct environment URL variable.
