# ============================================================
# APPLICATION COMMON COMPONENTS OVERVIEW
# ============================================================

status: canonical
layer: applications
domain: common-components
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This overview defines the role of the
application-common-components folder.

This folder exists to hold a reusable catalog
for components that are expected to be reused
across multiple applications under CivilizationSystem.

# ============================================================
# 2. DESIGN POSITION
# ============================================================

This folder is not an app.

It is a cross-application reference layer
placed under 07.applications so that
application designers can quickly identify:

- what should be reused
- what should be pushed to PersonaOS
- what should be pushed to BusinessOS
- what should remain app-specific
- what newly discovered components should be promoted to common

# ============================================================
# 3. CORE PRINCIPLE
# ============================================================

Common components hold:
- meaning
- boundaries
- authority principles
- common capability definitions
- reusable runtime semantics
- reusable policy semantics

Each app holds:
- screen layout
- button placement
- entry flow
- app-specific wording
- app-specific review surface
- app-specific feature flow

# ============================================================
# 4. MAIN CLASSIFICATION
# ============================================================

Common components are broadly classified into:

- PersonaOS-side common components
- BusinessOS-side common components
- cross-application usage guidance
- additive reusable candidates derived from concrete app design

# ============================================================
# 5. REUSE WORKFLOW
# ============================================================

For every new app design:

1. inspect this catalog
2. classify each feature candidate
3. determine whether it belongs to PersonaOS common
4. determine whether it belongs to BusinessOS common
5. determine whether it is a new additive common candidate
6. keep only residual app-specific parts in the app

# ============================================================

# ============================================================
# 6. ADDITIVE STAGING AND PROMOTION FLOW
# ============================================================

additive_staging_role:
The additive ledger layer exists to hold newly discovered
cross-application reusable candidates before they are fixed
as official common components.

fixed_vs_additive:
fixed common components:
- already promoted
- already judged stable enough
- already part of the canonical common set

additive candidates:
- newly discovered
- not yet fully stabilized
- may still be absorbed, split, merged, or deferred

promotion_flow:
1. discover reusable component candidate
2. record it in additive ledger
3. evaluate overlap with existing fixed common components
4. decide one of:
   - promote to fixed
   - absorb into existing
   - keep as additive candidate
   - classify as OS-internal common
   - keep as mapping-only
5. reflect promoted items into:
   - integrated catalog
   - ledger
   - reference matrix

important_boundary:
The additive ledger is not a dump of app-specific features.
It is only for reusable semantic or capability-level candidates.

benefit:
This keeps the fixed common set stable,
while allowing new reusable components
to be discovered and refined continuously.

