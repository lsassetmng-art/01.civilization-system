# ============================================================
# CIVILIZATION SYSTEM DIRECTORY STRUCTURE RULE
# ============================================================

status: canonical
system: civilization-system
scope: global
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical directory structure and
shared layer numbering rules for the entire
Civilization System.

This rule applies to:

- foundation
- all operating systems
- applications
- documentation
- common rules

The goal is to keep system boundaries clear,
maintain long-term scalability,
and prevent structural drift between OS layers.


# ============================================================
# ROOT STRUCTURE
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
# ROOT DIRECTORY RULE
# ============================================================

The Civilization System root separates:

- common foundation
- platform operating systems
- applications
- documentation
- shared rules

Applications are not placed inside OS directories.

ERP is not part of Civilization System
and must remain a separate system.


# ============================================================
# SHARED OS LAYER NUMBERING RULE
# ============================================================

All operating systems in Civilization System
must use the following shared layer numbering rule
when a layer exists.

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
# SHARED OS LAYER RULE
# ============================================================

The numbering rule is common across all OS layers.

However:

- not every OS must contain every layer
- missing layers are allowed
- missing layers should remain as gaps
- layer numbers must not be reassigned to different meanings

This means:

If an OS does not need integration,
060.integration may be absent.

If an OS does not need society,
900.society may be absent.

But if the layer exists,
it must use the shared canonical number.


# ============================================================
# LAYER DEFINITIONS
# ============================================================

## 000.rules
Shared rules internal to the OS.

## 010.constitution
Core principles, boundaries, and non-negotiable rules.

## 020.architecture
High-level structural design and responsibility separation.

## 030.model
Canonical domain models and reference models.

## 040.runtime
Runtime behavior, state transitions, and processing behavior.

## 050.flow
Business flows, lifecycle flows, and cross-step domain flows.

## 060.integration
Cross-system integration and synchronization structure.

## 070.operations
Operational procedures and operational state handling.

## 080.policy
Control rules, usage rules, and boundary policies.

## 090.interface
User-facing, admin-facing, or system-facing interface definitions.

## 100.security
Security constraints, access protection, audit integrity, and threat controls.

## 110.infrastructure
Runtime platform, storage, logging, integration channel, and operational infrastructure.

## 120.implementation
Implementation-oriented specifications and implementation supplements.

## 130.development
Roadmaps, dependency maps, implementation order, development planning.

## 900.society
Society-layer documents, where applicable.

## 910.civilization
Civilization-facing documents, where applicable.

## 920.meta
Meta-level management, changelog, dependency map, document map, and system metadata.

## 999.archive
Archived folders, retired structures, and preserved migration history.


# ============================================================
# ROOT FILE RULE
# ============================================================

Root directories should contain directories first.

Root-level files are allowed only when they are
canonical system-level documents or intentionally retained full compilations.

Examples of allowed root-level files:

- canonical top-level structure specification
- system-wide overview
- intentionally retained full compiled books

Operational helper files should not remain
scattered at the root long-term.


# ============================================================
# FILE PLACEMENT RULE
# ============================================================

The following files should be placed under docs or rules areas,
not loosely scattered at OS root unless temporarily required:

- active file lists
- root file indexes
- restructure reports
- renumber maps
- temporary migration notes

Compiled full files may be kept separately
when they are intentionally used as review artifacts.


# ============================================================
# FOUNDATION RULE
# ============================================================

00.foundation contains shared principles for the whole system.

Typical contents include:

- constitution-level common thought
- design standards
- safety rules
- structure rules
- cross-system principles


# ============================================================
# OS ROLE RULE
# ============================================================

Each OS provides platform capabilities.

Operating systems define:

- structure
- models
- runtime rules
- flows
- policies
- interfaces
- security
- operations
- development support

Applications are built on top of OS capabilities.


# ============================================================
# 01 CIVILIZATION OS
# ============================================================

CivilizationOS is the world and simulation layer.

Typical responsibilities:

- nation
- government
- law
- economy
- war
- population
- religion
- technology
- history

CivilizationOS is primarily a world-rule OS.

Implementation and development may exist,
but they are not the leading identity of the system.


# ============================================================
# 02 PERSONA OS
# ============================================================

PersonaOS is the artificial persona and external rights layer.

Typical responsibilities:

- identity
- memory
- emotion
- cognition
- behavior
- relationship
- growth
- snapshot
- release
- license
- access grant
- external rights

PersonaOS is the source of truth for persona-derived rights state.


# ============================================================
# 03 BUSINESS OS
# ============================================================

BusinessOS is a small-scale business tools platform.

BusinessOS is not ERP.

ERP remains outside Civilization System.

Typical responsibilities:

- task management
- project tracking
- notes
- mini CRM
- calendar utilities
- lightweight workspace applications

BusinessOS is a lightweight platform OS,
not a full enterprise core system.


# ============================================================
# 04 LIFE OS
# ============================================================

LifeOS is the life management platform.

Typical responsibilities:

- health
- sleep
- meal
- habit
- home
- daily life metrics


# ============================================================
# 05 GAME OS
# ============================================================

GameOS is the game and simulation support platform.

Typical responsibilities:

- player
- quest
- battle
- items
- score
- progression


# ============================================================
# 06 STREAMING OS
# ============================================================

StreamingOS is the streaming ecosystem platform.

Typical responsibilities:

- stream
- viewer
- chat
- donation
- fan communities
- creator-facing interaction


# ============================================================
# APPLICATION LAYER
# ============================================================

07.applications contains real applications.

Applications may use multiple OS capabilities.

Applications must not redefine OS-level shared rules
inside application directories.


# ============================================================
# DOCUMENTATION
# ============================================================

90.docs contains system-wide documentation.

Typical contents:

- architecture references
- design indexes
- model catalogs
- bible documents
- compiled review documents


# ============================================================
# SHARED RULES
# ============================================================

91.rules contains Civilization System-wide canonical rules.

Typical contents:

- naming rules
- numbering rules
- directory structure rules
- cross-OS structural rules
- file placement rules


# ============================================================
# ERP BOUNDARY
# ============================================================

ERP is not part of Civilization System.

ERP must remain a separate system.

Example:

~/02.erp-system


# ============================================================
# FINAL RULE
# ============================================================

All future OS additions inside Civilization System
must follow this shared numbering rule
and root structure rule.

If a layer is added in the future,
it must use the canonical number defined here.
