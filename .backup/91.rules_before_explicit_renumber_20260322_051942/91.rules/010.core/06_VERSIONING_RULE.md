# ============================================================
# VERSIONING RULE
# ============================================================

status: canonical
scope: global
component: versioning-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical versioning rule
for design documents across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- when a document version is considered changed
- what kinds of change are major or minor
- how canonical stability should be preserved
- how versioning relates to structural migration


# ============================================================
# CORE PRINCIPLE
# ============================================================

Versioning exists to preserve structural trust.

A version should change when the meaning,
scope, boundary, or operational interpretation
of a document changes in a meaningful way.

Versioning should not be treated
as decorative bookkeeping.


# ============================================================
# CHANGE CLASS RULE
# ============================================================

Changes may be understood in the following classes.

## Structural change
A change to:

- scope
- layer role
- ownership meaning
- directory placement meaning
- naming rule meaning
- numbering rule meaning
- source-of-truth boundary

This is a major change.

## Behavioral change
A change to:

- runtime meaning
- flow interpretation
- policy effect
- operational handling
- integration behavior

This is usually a major or significant change.

## Editorial change
A change to:

- wording clarity
- formatting
- typo correction
- section readability

This is a minor change
unless structural meaning also changed.


# ============================================================
# CANONICAL DOCUMENT VERSION RULE
# ============================================================

Canonical documents must be treated as stable.

A canonical document should not be revised casually.

When canonical meaning changes,
the change must be explicit and reviewable.

If the change affects other documents,
migration awareness is required.


# ============================================================
# VERSIONING AND NAMING RULE
# ============================================================

Canonical filenames should remain stable.

Version should not normally be encoded
directly in the filename.

Structural identity belongs to the canonical filename.
Version belongs to change history and document management.


# ============================================================
# MIGRATION RULE
# ============================================================

When a structural migration happens,
the following should be clear:

- what changed
- why it changed
- what old structure was replaced
- what new structure became canonical
- whether archive preservation is required

Migration must not silently erase structural history.


# ============================================================
# CROSS-DOCUMENT IMPACT RULE
# ============================================================

A version-impacting change must consider
dependent documents.

Examples:

- directory structure rule changes may affect file naming and placement rules
- file naming rule changes may affect design document and model rules
- model numbering rule changes may affect model registries and references

Versioning must be evaluated
in system context, not document isolation.


# ============================================================
# FINAL RULE
# ============================================================

Versioning must reflect real structural meaning.

Editorial cleanup alone is minor.

Boundary, role, numbering, naming, and structural rule changes
must be treated as significant versioning events.
