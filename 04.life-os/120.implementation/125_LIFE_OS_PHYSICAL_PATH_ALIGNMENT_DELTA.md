# ============================================================
# LIFE OS PHYSICAL PATH ALIGNMENT DELTA
# ============================================================

status: canonical
system: life-os
layer: 120.implementation
component: physical-path-alignment-delta

owner: Boss
prepared_by: Zero
approved_by: Boss
approved_at: 2026-09-24

# ============================================================
# PURPOSE
# ============================================================

Align LifeOS implementation physical placement
with the Civilization-wide
IMPLEMENTATION PHYSICAL PATH STANDARD.

This document changes physical placement only.

It does not redefine LifeOS domain ownership,
screen behavior, API contracts,
stateflow semantics, or feature responsibilities.

# ============================================================
# GLOBAL RULE BINDING
# ============================================================

LifeOS implementation root remains:

~/03.civilization-development/04.life-os/

The canonical top-level physical structure is:

04.life-os/
  010.system/
  020.applications/
  030.commonos/
  040.shared/
  050.tools/
  900.meta/

# ============================================================
# LIFEOS SYSTEM MAPPING
# ============================================================

The existing LifeOS implementation-tree design:

life-os/
  app/
  features/
  domain/
  data/
  events/
  jobs/
  policy/
  ops/
  tests/

is interpreted physically as:

04.life-os/
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

The logical ownership and internal meanings
of the existing LifeOS implementation design
remain unchanged.

Only its physical top-level placement
is aligned under 010.system.

# ============================================================
# LIFEOS APPLICATION MAPPING
# ============================================================

LifeOS-owned applications belong under:

04.life-os/020.applications/<ApplicationName>/

Current known LifeOS application directories include:

- BodyMetrics
- BusinessLegalSupport
- CareerLaunch
- EndOfLifePlanner
- InheritanceSupport
- LegalSupport
- LifePlanner
- MealPlanner
- MoneyPlanner
- TrainingCoach

These existing directories remain in place
until an exact dependency audit authorizes movement.

This document does not itself authorize moves.

# ============================================================
# COMMONOS MAPPING
# ============================================================

The current LifeOS CommonOS consumer boundary
is conceptually mapped to:

04.life-os/030.commonos/

The existing _commonos directory
must not be moved until dependency references
and runtime consumers are audited.

# ============================================================
# SHARED MAPPING
# ============================================================

OS-local shared implementation assets
belong under:

04.life-os/040.shared/

The existing _shared-web directory
is a migration candidate for this role.

Exact target substructure must be confirmed
by dependency audit before movement.

# ============================================================
# TOOLING MAPPING
# ============================================================

LifeOS-local scripts, verification utilities,
and launchers belong under:

04.life-os/050.tools/

Existing scripts and portal-web content
must be classified by exact function
before any move is authorized.

No file is reclassified solely by directory name.

# ============================================================
# META MAPPING
# ============================================================

LifeOS implementation audit and work evidence
remains under:

04.life-os/900.meta/

900.meta is retained as the canonical
implementation-side audit/meta role.

# ============================================================
# ROUTE NON-SCOPE
# ============================================================

This physical-path delta does not resolve
the separate LifeOS route contradiction involving:

/life/home
/life/dashboard

That issue remains governed
by the LifeOS interface/design reconciliation process.

# ============================================================
# AUTH NON-SCOPE
# ============================================================

This physical-path delta does not define
CivilizationOS-to-LifeOS identity/session mapping.

That contract remains a separate design delta.

# ============================================================
# MIGRATION GATE
# ============================================================

Before moving any existing LifeOS implementation:

- exact source path must be identified
- exact target path must be identified
- direct references must be inventoried
- transitive local dependencies must be inventoried
- launcher references must be inventoried
- Android/iPhone/Web references must be inventoried
- CommonOS references must be inventoried
- absolute path references must be inventoried
- mutation requires separate explicit GO

No broad move is authorized by this document.

# ============================================================
# DECISION
# ============================================================

LifeOS adopts the Civilization-wide numbered
physical implementation structure:

010.system
020.applications
030.commonos
040.shared
050.tools
900.meta

Existing implementation remains untouched
until dependency-safe migration GO is granted.
