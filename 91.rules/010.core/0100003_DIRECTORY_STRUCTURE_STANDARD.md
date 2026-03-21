# ============================================================
# DIRECTORY STRUCTURE STANDARD
# ============================================================

status: canonical
scope: global
component: directory-structure-standard

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure standard
for the Civilization System and its operating systems.

This standard is the operational directory standard
used under the higher-level rule:

910_CIVILIZATION_SYSTEM_DIRECTORY_STRUCTURE_RULE.md


# ============================================================
# CIVILIZATION SYSTEM ROOT STRUCTURE
# ============================================================

01.civilization-system

 ├ 00.foundation
 ├ 01.civilization-os
 ├ 02.persona-os
 ├ 03.business-os
 ├ 04.life-os
 ├ 05.game-os
 ├ 06.streaming-os
 ├ 07.applications
 ├ 90.docs
 └ 91.rules


# ============================================================
# ROOT STRUCTURE RULE
# ============================================================

The Civilization System root separates:

- shared foundation
- platform operating systems
- applications
- system-wide documentation
- shared canonical rules

Applications must not be placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER STRUCTURE
# ============================================================

Each OS may contain only the layers it actually needs.

When a layer exists, it must use the canonical number below.

000.rules
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.society
910.civilization
920.meta
999.archive


# ============================================================
# LAYER PRESENCE RULE
# ============================================================

Not all OS directories must contain all layers.

Missing layers are allowed.

However:

- existing layer numbers must keep their canonical meaning
- numbers must not be reassigned to other meanings
- structural gaps are valid


# ============================================================
# ROOT FILE RULE
# ============================================================

OS roots should primarily contain directories.

Root-level files are allowed only when they are:

- canonical root indexes
- top-level structure rules
- intentionally retained root-level canonical documents

Operational helper files should not remain
scattered at OS root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following file types should not remain
loosely at OS root long-term:

- active file lists
- temporary dumps
- restructure reports
- renumber maps
- temporary migration notes

These should be archived or managed separately.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains cross-system foundational rules.

Typical contents include:

- common design principles
- safety rules
- structure rules
- canonical standards
- cross-system philosophy


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Typical OS responsibilities include:

- constitution
- architecture
- models
- runtime behavior
- flows
- integration
- operations
- policies
- interfaces
- security
- infrastructure
- implementation specifications
- development planning


# ============================================================
# APPLICATION RULE
# ============================================================

07.applications contains real user-facing applications.

Applications may consume multiple OS capabilities.

Applications must not redefine shared OS rules.


# ============================================================
# DOCUMENTATION RULE
# ============================================================

90.docs contains system-wide documentation.

Typical contents include:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review materials


# ============================================================
# SHARED RULES RULE
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents include:

- naming standards
- numbering standards
- directory standards
- cross-OS structure rules
- data rules
- event rules
- security rules
- development rules


# ============================================================
# FINAL RULE
# ============================================================

Directory structure must remain stable across the Civilization System.

All future OS additions must follow
the shared canonical layer numbering rule
and the shared root structure rule.
