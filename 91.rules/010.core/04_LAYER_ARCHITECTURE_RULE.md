# ============================================================
# LAYER ARCHITECTURE RULE
# ============================================================

status: canonical
scope: global
component: layer-architecture-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical layer architecture rule
for operating systems inside the Civilization System.

This rule defines:

- canonical layer meanings
- layer separation principles
- placement boundaries between layers
- stability of shared layer numbering


# ============================================================
# SHARED LAYER NUMBERING
# ============================================================

Operating systems inside the Civilization System
must use the following canonical layer numbering
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
# LAYER PRESENCE RULE
# ============================================================

Not every OS must contain every layer.

Missing layers are allowed.

However:

- if a layer exists, it must use the canonical number
- canonical layer numbers must not be reassigned
- structural gaps are valid


# ============================================================
# LAYER MEANING RULE
# ============================================================

## 000.rules
OS-internal shared rules.

## 010.constitution
Non-negotiable principles, hard boundaries, and core system identity.

## 020.architecture
High-level structure, major components, and responsibility separation.

## 030.model
Canonical data models, reference models, and structural domain entities.

## 040.runtime
Runtime behavior, state transitions, execution semantics, and processing behavior.

## 050.flow
Cross-step domain flow, lifecycle flow, and business process flow.

## 060.integration
Cross-system integration, synchronization, and interface between systems.

## 070.operations
Operational procedures, operational state handling, monitoring-facing procedures.

## 080.policy
Control rules, usage constraints, governance-like operational policies.

## 090.interface
User-facing, admin-facing, or system-facing interfaces and surfaces.

## 100.security
Security rules, access protection, audit integrity, and threat handling.

## 110.infrastructure
Storage, logging, runtime platform, integration channels, and operational foundations.

## 120.implementation
Implementation-oriented specifications, adapter details, and execution-facing design supplements.

## 130.development
Roadmaps, dependency plans, implementation ordering, and development planning.

## 900.society
Society-facing domain documents where applicable.

## 910.civilization
Civilization-facing domain documents where applicable.

## 920.meta
Meta-level maps, changelogs, dependency maps, and document management materials.

## 999.archive
Archived structures, retired layouts, and migration history.


# ============================================================
# PLACEMENT RULE
# ============================================================

A document must be placed in the layer
whose meaning best matches its actual role.

Examples:

- a hard principle belongs in constitution
- a structural split belongs in architecture
- a domain entity belongs in model
- a processing behavior belongs in runtime
- a cross-step business sequence belongs in flow
- a synchronization design belongs in integration
- an operational procedure belongs in operations
- a usage restriction belongs in policy
- an admin screen design belongs in interface
- a protection rule belongs in security
- a runtime platform requirement belongs in infrastructure
- an implementation detail spec belongs in implementation
- a roadmap belongs in development


# ============================================================
# LAYER MIXING RULE
# ============================================================

A document must not mix unrelated layer roles casually.

Examples of invalid mixing:

- policy and runtime logic merged into one document without separation
- model and interface combined without structural reason
- infrastructure and constitution mixed as one document

Cross-layer references are allowed.

Cross-layer content collapse is discouraged.


# ============================================================
# DEPENDENCY DIRECTION RULE
# ============================================================

Higher-level rules should remain structurally stable.

Typical direction is:

constitution
→ architecture
→ model / runtime / flow / integration
→ operations / policy / interface / security / infrastructure
→ implementation / development

Exact operational references may vary by system,
but reverse structural dependency should be avoided.


# ============================================================
# STABILITY RULE
# ============================================================

Layer meanings must remain stable across systems.

A number once assigned to a shared layer meaning
must not later be reused for another meaning.


# ============================================================
# FINAL RULE
# ============================================================

All operating systems inside the Civilization System
must preserve the canonical meaning of shared layers.

Documents must be placed according to role,
not convenience.
