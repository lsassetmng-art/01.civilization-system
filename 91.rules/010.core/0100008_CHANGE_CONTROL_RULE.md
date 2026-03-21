# ============================================================
# CHANGE CONTROL RULE
# ============================================================

status: canonical
scope: global
component: change-control-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical change control rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- how canonical documents may be changed
- how structural changes should be evaluated
- how archival preservation should be handled
- how drift and silent rewrite should be prevented


# ============================================================
# CORE PRINCIPLE
# ============================================================

Canonical documents may evolve,
but change must be explicit, reviewable, and traceable.

Silent structural drift is prohibited.


# ============================================================
# CHANGE TYPES
# ============================================================

Typical change types include:

## Editorial change
- wording clarification
- typo correction
- formatting cleanup

## Structural refinement
- clearer sectioning
- clearer scope statement
- explicit rule separation

## Structural change
- renumbering
- layer reassignment
- naming rule change
- directory rule change
- source-of-truth reassignment
- boundary change

The more structural the change,
the stronger the control requirement.


# ============================================================
# REQUIRED CHANGE DISCIPLINE
# ============================================================

Before changing a canonical document,
the following should be understood:

- why the change is needed
- what rule or structure is being improved
- what downstream documents may be affected
- whether archive preservation is required
- whether migration notes are required


# ============================================================
# RENAME AND MOVE RULE
# ============================================================

Canonical files must not be renamed or moved casually.

Renaming or moving is allowed only when:

- the current structure is incorrect
- the target structure is explicitly more canonical
- dependent references can be updated
- archival history is preserved when needed


# ============================================================
# REPLACEMENT RULE
# ============================================================

When one document replaces another,
the outcome must be explicit.

Possible outcomes:

- replaced and archived
- replaced and deleted
- superseded by higher-level rule
- converted into derived operational material

Replacement without explicit disposition is discouraged.


# ============================================================
# BULK REFACTOR RULE
# ============================================================

Bulk structural changes are allowed
when system-wide consistency is being restored.

Examples:

- root renumbering
- layer unification
- file naming normalization
- archive cleanup

However, bulk refactors must still preserve:

- traceability
- backup or archive path
- explicit new canonical state


# ============================================================
# CONFLICT RULE
# ============================================================

When two files or structures compete,
conflict must be resolved deliberately.

Possible actions include:

- merge
- archive legacy
- keep one canonical and one derived
- rename conflict artifact explicitly

Unresolved ambiguity must not remain in active canonical space.


# ============================================================
# FINAL RULE
# ============================================================

Canonical change must be explicit,
traceable, and structurally justified.

Stability is the default.
Change requires reason.
