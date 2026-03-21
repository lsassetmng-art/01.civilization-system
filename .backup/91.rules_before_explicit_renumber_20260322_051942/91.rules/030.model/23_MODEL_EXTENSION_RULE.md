# ============================================================
# MODEL EXTENSION RULE
# ============================================================

status: canonical
layer: rules
component: model-extension-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical file extension rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- which extension canonical model files must use
- which exceptions may exist
- how non-canonical supporting artifacts should be treated


# ============================================================
# CANONICAL EXTENSION RULE
# ============================================================

Canonical model files must use:

.md

This applies to the canonical design-layer model documents
stored under:

030.model


# ============================================================
# EXCEPTION RULE
# ============================================================

Other extensions may exist only when explicitly required
for tooling, export, or generated artifacts.

Examples of non-canonical supporting outputs may include:

- .json
- .csv
- .txt

Such files must not replace the canonical .md model document.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

For model design documents,
the .md file is the source of truth.

Generated or exported artifacts are secondary
and must be reproducible from canonical sources.


# ============================================================
# NAMING RULE
# ============================================================

The extension rule does not replace
the filename numbering and logical naming rules.

Canonical model filenames must still follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md


# ============================================================
# STABILITY RULE
# ============================================================

Published canonical model files
must not change extension casually.

Changing extension requires an explicit structural reason
and migration handling.


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must use:

.md

Non-.md artifacts may exist only as supporting materials
and must not replace the canonical model document.
