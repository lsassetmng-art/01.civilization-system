# ============================================================
# MODEL NAMING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-naming

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the logical naming rule
for model files across the Civilization System.

This file defines only the LOGICAL_NAME part.

Full filename structure is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md


# ============================================================
# RESPONSIBILITY
# ============================================================

20_MODEL_NUMBERING_STANDARD.md defines:

- system number
- OS number
- folder number
- subfolder number
- file serial number

This file defines:

- LOGICAL_NAME style
- word composition
- readability rules
- stability rules


# ============================================================
# LOGICAL NAME RULE
# ============================================================

The logical name of a model file must use:

UPPERCASE_WITH_UNDERSCORES

Examples:

PERSONA_LICENSE
PERSONA_ACCESS_GRANT
BUSINESS_WORKSPACE_MEMBER
CIVILIZATION_SYNC_EVENT_INBOX_MODEL


# ============================================================
# WORD SELECTION RULE
# ============================================================

Model logical names must:

- be domain-accurate
- be concise
- avoid filler words
- avoid unstable wording
- remain readable without external context

Use nouns or noun phrases as the default style.


# ============================================================
# SUFFIX RULE
# ============================================================

Use suffixes only when they carry structural meaning.

Typical examples:

- MODEL
- REF_MODEL
- BINDING_MODEL
- EVENT_INBOX_MODEL

Avoid decorative or redundant suffixes.


# ============================================================
# CASE RULE
# ============================================================

Model logical names must be uppercase.

Lowercase model logical names are prohibited
for canonical model files.


# ============================================================
# STABILITY RULE
# ============================================================

Once published, a model logical name
should remain stable unless:

- the domain meaning changed
- the model boundary changed
- the old name became structurally incorrect

Renaming for style alone should be avoided.


# ============================================================
# FINAL RULE
# ============================================================

Model logical names must use:

UPPERCASE_WITH_UNDERSCORES

The full model filename must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md
