# ============================================================
# SYSTEM DEPENDENCY RULE
# ============================================================

status: canonical
scope: architecture
component: system-dependency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical inter-system dependency rules
inside the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- allowed cross-OS dependency
- cross-system ownership boundaries
- external system isolation
- source-of-truth preservation


# ============================================================
# CORE PRINCIPLE
# ============================================================

Systems may interact.
Systems must not collapse into one another.

Cross-system reference is allowed.
Cross-system ownership transfer is not implicit.


# ============================================================
# INTERNAL OS RULE
# ============================================================

The following operating systems exist
inside Civilization System.

- CivilizationOS
- PersonaOS
- BusinessOS
- LifeOS
- GameOS
- StreamingOS

Each OS may depend on another OS
only through explicit structural boundaries.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

Each system must preserve source-of-truth ownership.

Examples:

- PersonaOS owns persona identity and persona-derived rights truth
- CivilizationOS owns civilization-world truth
- BusinessOS owns business app and workspace truth

A consumer system may mirror state.
A consumer system must not become false authority.


# ============================================================
# ALLOWED DEPENDENCY EXAMPLES
# ============================================================

Examples of allowed dependency include:

- BusinessOS referencing PersonaOS release, license, or access state
- CivilizationOS referencing PersonaOS release or rights state
- PersonaOS receiving growth input from BusinessOS
- PersonaOS receiving growth input from CivilizationOS

These are allowed because
reference and request do not erase ownership.


# ============================================================
# PROHIBITED DEPENDENCY EXAMPLES
# ============================================================

Examples of prohibited dependency include:

- BusinessOS directly mutating PersonaOS source-of-truth records
- CivilizationOS directly mutating PersonaOS rights truth
- ERP directly mutating Civilization internal truth
- one OS silently redefining another OS boundary


# ============================================================
# ERP BOUNDARY RULE
# ============================================================

ERP is outside Civilization System.

ERP may integrate through explicit contracts,
but ERP is not part of the internal OS layer structure.

ERP must not directly mutate Civilization System internals
without explicit external integration design.


# ============================================================
# MIRROR RULE
# ============================================================

Mirrored state is allowed.

However:

- mirrored state is not source of truth
- mirrored state must remain attributable
- mirrored state must be refreshable or synchronizable
- invalid mirrored state must not override authoritative truth


# ============================================================
# FINAL RULE
# ============================================================

System dependency is allowed only through explicit boundaries.

Reference is allowed.
Ownership transfer is not implicit.
Source-of-truth must remain explicit across all systems.
