# ============================================================
# CANONICAL STATUS RULE
# ============================================================

status: canonical
scope: global
component: canonical-status-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical status rule
for documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what canonical means
- how canonical differs from draft or support material
- how canonical files should be treated
- how competing documents are resolved


# ============================================================
# CANONICAL DEFINITION
# ============================================================

A canonical document is an official source of truth
for its defined scope.

Canonical status means:

- the document is authoritative in scope
- the document is expected to remain stable
- the document may be referenced by other rules or systems
- conflicting documents must defer to it


# ============================================================
# NON-CANONICAL MATERIAL RULE
# ============================================================

The following do not automatically become canonical:

- dumps
- active file lists
- temporary reports
- migration notes
- review artifacts
- compiled full books
- exploratory drafts

These may be useful,
but they are not authoritative by default.


# ============================================================
# COMPETING DOCUMENT RULE
# ============================================================

If multiple documents appear to govern the same scope,
their relationship must be resolved explicitly.

Possible resolutions include:

- one document becomes canonical
- one document becomes archived legacy
- one document becomes a derived operational summary
- one document becomes a reference-only support file

Canonical ambiguity is prohibited.


# ============================================================
# ROOT CANONICAL RULE
# ============================================================

Root-level canonical files should be minimal.

A root-level canonical file must have
clear top-level scope.

Examples:

- system-wide structure rule
- root index
- intentionally retained top-level canonical file

Root-level presence alone does not grant canonical authority.


# ============================================================
# ARCHIVE RULE
# ============================================================

Archived files are not canonical by default.

Archive preserves history.
It does not preserve authority.

A file moved to archive may still be useful,
but active rules must not silently defer to archived material.


# ============================================================
# DERIVED DOCUMENT RULE
# ============================================================

A derived document may summarize,
compile, or operationalize canonical material.

Examples:

- operational standards derived from higher-level system rules
- compiled review documents
- full dumps for inspection

Derived documents must not silently override canonical sources.


# ============================================================
# STATUS FIELD RULE
# ============================================================

Canonical files should clearly declare status.

Typical statuses may include:

- canonical
- draft
- generated
- working-summary
- archived

Status must reflect document role honestly.


# ============================================================
# FINAL RULE
# ============================================================

Canonical status means authoritative source of truth
within defined scope.

Archive, dump, summary, and derived files
must not be mistaken for canonical authority.
