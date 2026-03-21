# ============================================================
# MODEL NUMBERING STANDARD
# ============================================================

status: canonical
layer: rules
component: model-numbering

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical naming and numbering rule
for model files across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines the detailed naming rule
used only for model files.

General non-model file naming is defined in:

010.core/02_FILE_NAMING_STANDARD.md


# ============================================================
# MODEL FILE NAMING RULE
# ============================================================

Model files must use:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Where:

- SS          = 2-digit system number
- OO          = 2-digit OS number
- FFF         = 3-digit root folder number
- PPPQQQ...   = additional 3-digit subfolder numbers, if present
- NNNNNN      = 6-digit file serial number
- LOGICAL_NAME = uppercase logical name using underscores

This rule applies only to model files.


# ============================================================
# EXAMPLES
# ============================================================

Example 1:
01.civilization-system
01.civilization-os
030.model
040.persona
file number 000001

Result:

010103040000001_PERSONA_REF_MODEL.md


Example 2:
01.civilization-system
02.persona-os
030.model
120.external_rights
file number 000001

Result:

010203120000001_PERSONA_LICENSE.md


Example 3:
01.civilization-system
03.business-os
030.model
040.persona
file number 000001

Result:

010303040000001_BUSINESS_PERSONA_RELEASE_REF_MODEL.md


# ============================================================
# NUMBER COMPONENT RULE
# ============================================================

## System Number
System number identifies the parent system.

Current example:

- 01 = civilization-system

## OS Number
OS number identifies the OS inside the system.

Examples:

- 01 = civilization-os
- 02 = persona-os
- 03 = business-os
- 04 = life-os
- 05 = game-os
- 06 = streaming-os

## Root Folder Number
Root folder number identifies the canonical root layer.

For model files, the root folder is typically:

- 030 = model

## Subfolder Numbers
Each subfolder under model may contribute
an additional 3-digit number segment.

Example:

030.model / 120.external_rights

becomes:

030 + 120

## File Serial Number
Each model file must have a 6-digit serial number.

Examples:

- 000001
- 000002
- 000003

Serial numbers must be unique within
the final numbering scope.


# ============================================================
# PRINCIPLES
# ============================================================

Model file identifiers must be:

- unique
- deterministic
- sortable
- stable after publication
- structurally meaningful from the filename alone


# ============================================================
# SCOPE RULE
# ============================================================

The model filename must reveal:

- which system owns the model
- which OS owns the model
- which root layer owns the model
- which subdomain owns the model
- which file serial the model has


# ============================================================
# FINAL RULE
# ============================================================

All model files must follow:

SSOOFFFPPPQQQ...NNNNNN_LOGICAL_NAME.md

Non-model files must not use this rule.
They follow the general file naming standard instead.
