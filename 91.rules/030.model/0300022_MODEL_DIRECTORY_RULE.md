# ============================================================
# MODEL DIRECTORY RULE
# ============================================================

status: canonical
layer: rules
component: model-directory-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- where model files must be placed
- how model subfolders are structured
- how numbered subfolders contribute to model filenames

Model filename structure itself is defined in:

030.model/20_MODEL_NUMBERING_STANDARD.md

Model logical naming is defined in:

030.model/21_MODEL_NAMING_STANDARD.md


# ============================================================
# ROOT LAYER RULE
# ============================================================

Canonical model files must be placed under:

030.model

This layer is the canonical root layer for model files.


# ============================================================
# SUBFOLDER RULE
# ============================================================

Subfolders under 030.model may be used
to represent model subdomains.

Subfolders should use the format:

NNN.logical-scope

Examples:

010.identity
020.memory
030.relationship
040.persona
050.integration
120.external_rights


# ============================================================
# NUMBER CONTRIBUTION RULE
# ============================================================

When a model file is placed under numbered subfolders,
those subfolder numbers contribute to the filename.

Example:

030.model / 120.external_rights / PERSONA_LICENSE model

Contributes:

030 + 120

Resulting filename prefix example:

SSOO030120NNNNNN_...


# ============================================================
# NESTED SUBFOLDER RULE
# ============================================================

Nested numbered subfolders are allowed
when domain separation requires them.

Examples:

030.model / 040.persona / 010.identity
030.model / 050.integration / 020.sync
030.model / 120.external_rights / 010.license

Each numbered subfolder contributes
its 3-digit number in sequence to the filename.


# ============================================================
# DIRECTORY NAMING RULE
# ============================================================

Model directory names must be:

NNN.logical-scope

Where:

- NNN = 3-digit directory number
- logical-scope = lowercase readable scope name

Examples:

010.identity
040.persona
120.external_rights


# ============================================================
# STABILITY RULE
# ============================================================

Once a model directory number is assigned,
its structural meaning should remain stable.

Renumbering should be avoided unless:

- the domain boundary changed
- the old directory became structurally incorrect
- the system is under an explicit migration phase


# ============================================================
# FINAL RULE
# ============================================================

All canonical model files must be placed under:

030.model

All canonical model subfolders should use:

NNN.logical-scope

Subfolder numbers contribute directly
to the canonical model filename.
