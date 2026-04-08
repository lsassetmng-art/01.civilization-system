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

# ============================================================
# 5. REUSE WORKFLOW
# ============================================================

For every new app design:

1. inspect this catalog
2. classify each feature candidate
3. determine whether it belongs to PersonaOS common
4. determine whether it belongs to BusinessOS common
5. keep only residual app-specific parts in the app

# ============================================================
