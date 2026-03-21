# ============================================================
# FILE NAMING STANDARD
# ============================================================

status: canonical
scope: global
component: file-naming-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical naming rules for files
across the Civilization System.


# ============================================================
# CORE PRINCIPLES
# ============================================================

File names must be:

- deterministic
- sortable
- unique within scope
- stable after publication
- human-readable after the numeric prefix


# ============================================================
# FILE NAMING RULE
# ============================================================

There are two naming classes:

1. model files
2. non-model files


# ============================================================
# NON-MODEL FILE RULE
# ============================================================

Non-model files must use the following format:

FFFNNNN_LOGICAL_NAME.md

Where:

- FFF    = 3-digit folder number
- NNNN   = 4-digit serial number inside the folder
- LOGICAL_NAME = uppercase snake-style logical name

Examples:

0100001_CIVILIZATION_OVERVIEW.md
0200001_SYSTEM_ARCHITECTURE.md
0400001_RUNTIME_OVERVIEW.md
0500001_ECONOMY_FLOW.md
0700001_RELEASE_OPERATION.md
0800001_PERSONA_USAGE_POLICY.md
0900001_BUSINESS_PERSONA_BINDING_INTERFACE.md
1200001_PERSONA_LICENSE_SPEC.md
1300001_PERSONA_EXTERNAL_RIGHTS_ROADMAP.md


# ============================================================
# MODEL FILE RULE
# ============================================================

Model files do not use the non-model rule above.

Model files must follow the dedicated
model numbering rule defined in:

model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# EXTENSION RULE
# ============================================================

Canonical design documents use:

.md

Other extensions may be used only when
explicitly allowed by system rules.


# ============================================================
# FINAL RULE
# ============================================================

All non-model canonical files must follow:

FFFNNNN_LOGICAL_NAME.md

All model files must follow the dedicated
model numbering standard.
