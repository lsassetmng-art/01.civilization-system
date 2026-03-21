# ============================================================
# DESIGN DOCUMENT STANDARD
# ============================================================

status: canonical
scope: global
component: design-document-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical standard
for design documents across the Civilization System.

This standard applies to:

- foundation documents
- OS-layer design documents
- shared rules
- application-facing design documents
- canonical supporting specifications


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- what a canonical design document is
- how canonical design documents should be structured
- how naming rules apply to design documents
- how directory rules apply to design documents

Detailed naming and numbering rules are defined in:

- 010.core/02_FILE_NAMING_STANDARD.md
- 030.model/20_MODEL_NUMBERING_STANDARD.md
- 010.core/03_DIRECTORY_STRUCTURE_STANDARD.md


# ============================================================
# CANONICAL DESIGN DOCUMENT RULE
# ============================================================

A canonical design document is a document
that acts as an official source of truth
for a specific scope.

Canonical documents must be:

- explicit
- deterministic
- reviewable
- stable after publication
- structurally consistent with system rules


# ============================================================
# DOCUMENT SCOPE RULE
# ============================================================

Each canonical design document must have
a clearly defined scope.

Typical scope examples:

- system-wide
- OS-wide
- layer-wide
- component-wide
- domain-wide
- interface-wide
- policy-wide

The scope must not be ambiguous.


# ============================================================
# REQUIRED HEADER RULE
# ============================================================

Canonical design documents should include
a stable top section that defines:

- title
- status
- scope or layer
- component when applicable
- owner
- prepared_by

These fields help identify source-of-truth status
without external lookup.


# ============================================================
# STRUCTURE RULE
# ============================================================

Canonical design documents should be organized
using clear sections.

Typical sections include:

- PURPOSE
- RESPONSIBILITY
- RULE
- STRUCTURE
- FLOW
- FINAL RULE

Not every file must contain every section,
but the structure must remain explicit and readable.


# ============================================================
# NAMING RULE
# ============================================================

Canonical design documents must follow
the shared naming standards.

There are two major classes:

## Non-model files
Non-model files follow:

FFFNNNN_LOGICAL_NAME.md

As defined in:

010.core/02_FILE_NAMING_STANDARD.md

## Model files
Model files follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

As defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# DIRECTORY RULE
# ============================================================

Canonical design documents must be placed
under the correct canonical layer directory.

Examples:

- 010.constitution
- 020.architecture
- 030.model
- 040.runtime
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 090.interface
- 100.security
- 110.infrastructure
- 120.implementation
- 130.development
- 900.society
- 910.civilization
- 920.meta

A document must not be placed in a layer
whose meaning does not match the document content.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root-level files should be minimized.

Only root-level canonical documents with
clear top-level purpose should remain at root.

Examples of valid root-level files:

- root index files
- top-level structure rules
- explicitly retained top-level canonical documents

Temporary helper files, dumps, lists,
and migration artifacts should not remain
loosely at root long-term.


# ============================================================
# CANONICAL STATUS RULE
# ============================================================

A canonical document is an official source of truth.

If multiple related documents exist,
their relationship must be clear.

Examples:

- top-level system rule
- operational standard
- detailed subsystem rule

The canonical role of each file must not be ambiguous.


# ============================================================
# STABILITY RULE
# ============================================================

Canonical design documents should not be renamed,
moved, or structurally changed casually.

Structural change requires:

- clear reason
- consistency with current rules
- migration awareness
- preservation of archival history when needed


# ============================================================
# FINAL RULE
# ============================================================

All canonical design documents across the Civilization System
must be:

- structurally explicit
- correctly placed
- correctly named
- stable after publication
- consistent with the shared directory,
  naming, and numbering standards
