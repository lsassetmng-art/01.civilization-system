# ============================================================
# IMPLEMENTATION PHYSICAL PATH STANDARD
# ============================================================

status: canonical
scope: global
component: implementation-physical-path-standard

owner: Boss
prepared_by: Zero
approved_by: Boss
approved_at: 2026-09-24

# ============================================================
# PURPOSE
# ============================================================

Define the canonical physical directory structure
for implementation repositories of Civilization operating systems.

This rule applies to implementation artifacts under:

~/03.civilization-development/<OS_ROOT>/

This rule does not redefine the design-directory structure under:

~/01.civilization-system/

The design tree and implementation tree remain separate concerns.

# ============================================================
# RELATION TO DESIGN DIRECTORY RULE
# ============================================================

The canonical Civilization design tree may contain:

07.applications

for standalone or cross-OS applications at the design-system level.

That rule does not prohibit an implementation OS
from owning implementation applications physically inside its own OS root.

The following terms are distinct:

- design-level standalone/cross-OS application
- OS-owned implementation application

OS-owned implementation applications follow this document.

# ============================================================
# CANONICAL OS IMPLEMENTATION ROOT
# ============================================================

Each operating system owns one physical implementation root:

~/03.civilization-development/<OS_ROOT>/

Examples:

~/03.civilization-development/01.civilization-os/
~/03.civilization-development/03.business-os/
~/03.civilization-development/04.life-os/
~/03.civilization-development/05.game-os/
~/03.civilization-development/06.streaming-os/
~/03.civilization-development/10.staticart-os/
~/03.civilization-development/11.aiworker-os/
~/03.civilization-development/12.common-os/

An OS implementation root must not be wrapped
inside another duplicate OS-name directory.

Prohibited examples:

<OS_ROOT>/LifeOS/
<OS_ROOT>/life-os/
<OS_ROOT>/LifeWeb/

when those directories exist only to duplicate
the already-established OS root.

# ============================================================
# CANONICAL NUMBERED PHYSICAL STRUCTURE
# ============================================================

The standard top-level implementation structure is:

<OS_ROOT>/
  010.system/
  020.applications/
  030.commonos/
  040.shared/
  050.tools/
  900.meta/

# ============================================================
# 010.system
# ============================================================

010.system contains the canonical implementation
of the operating system itself.

Typical contents may include:

010.system/
  app/
  features/
  domain/
  data/
  events/
  jobs/
  policy/
  ops/
  tests/

Internal structure may vary by OS canonical design.

The numeric top-level role remains stable
even when an OS does not use every internal directory.

# ============================================================
# 020.applications
# ============================================================

020.applications contains implementation applications
owned by or primarily belonging to that operating system.

Canonical path:

<OS_ROOT>/020.applications/<ApplicationName>/

Examples for LifeOS:

04.life-os/020.applications/BodyMetrics/
04.life-os/020.applications/MealPlanner/
04.life-os/020.applications/LifePlanner/

An OS-owned application may have its own:

- web implementation
- Android implementation
- iPhone implementation
- contracts
- runtime launcher metadata
- app-local tests

Applications that are genuinely standalone or cross-OS
may follow a separate explicitly-governed application root.

Ownership must be explicit.

# ============================================================
# 030.commonos
# ============================================================

030.commonos contains the CommonOS consumer boundary
for an operating system.

Typical contents may include:

- adapter
- bridge
- mapper
- presenter
- sync
- theme
- consumer tests

CommonOS canonical provider implementation
remains owned by CommonOS itself.

For the CommonOS provider root,
030.commonos may be absent or reserved;
the provider must not recursively consume itself
merely to satisfy directory symmetry.

# ============================================================
# 040.shared
# ============================================================

040.shared contains implementation assets
shared inside one OS boundary.

Examples:

- shared web runtime assets
- common UI helpers
- OS-local reusable contracts
- shared utilities

040.shared must not become
a second uncontrolled CommonOS provider.

Cross-OS canonical shared behavior belongs to CommonOS
or another explicitly-owned shared foundation.

# ============================================================
# 050.tools
# ============================================================

050.tools contains OS-local development,
verification, migration, launcher,
and maintenance tooling.

Typical contents may include:

050.tools/
  scripts/
  verify/
  launcher/
  migration/

Tooling must not become the canonical owner
of OS domain behavior.

# ============================================================
# 900.meta
# ============================================================

900.meta contains implementation-side:

- audit reports
- inventory reports
- dependency maps
- migration evidence
- validation evidence
- temporary controlled work reports

900.meta is not a source-code ownership layer.

# ============================================================
# OPTIONAL DIRECTORY RULE
# ============================================================

Not every operating system must physically contain
every numbered directory.

A directory may be absent when its role is unused.

However, if the role exists,
the canonical number and meaning must be preserved.

Examples:

- no OS-owned apps -> 020.applications may be absent
- no OS-local shared assets -> 040.shared may be absent

Numbers must not be reassigned to unrelated meanings.

# ============================================================
# ROOT CLEANLINESS RULE
# ============================================================

OS implementation roots should remain structurally clean.

Root-level files should be limited to
explicit root metadata or intentionally retained entry files.

OS-owned applications must not remain scattered
at OS root after their migration is approved.

Shared assets, CommonOS adapters, tools,
and audit material must move into
their canonical numbered role
when dependency-safe migration is approved.

# ============================================================
# LEGACY MIGRATION RULE
# ============================================================

This standard does not authorize immediate file movement.

Existing implementation trees are treated as legacy placement
until each OS completes a dependency audit.

Required migration sequence:

1. read-only inventory
2. exact dependency map
3. target classification
4. explicit GO
5. exact-path move
6. reference repair
7. build/runtime verification
8. UI acceptance where applicable
9. exact-path stage
10. review
11. commit only after explicit commit GO

Broad uncontrolled moves are prohibited.

Existing implementation must not be deleted,
overwritten, or silently replaced
to conform to this standard.

# ============================================================
# CROSS-OS CONSISTENCY RULE
# ============================================================

All Civilization operating systems
must use the same numbered top-level role meanings:

010 = canonical OS system implementation
020 = OS-owned applications
030 = CommonOS consumer boundary
040 = OS-local shared implementation assets
050 = OS-local tools and launchers
900 = implementation audit and metadata

Internal domain structure beneath these roles
may remain OS-specific.

# ============================================================
# FINAL RULE
# ============================================================

The physical implementation structure must be:

stable,
numbered,
role-based,
cross-OS consistent,
and migration-safe.

Outer physical structure is shared across OSes.

Inner domain structure remains owned
by each OS canonical design.
