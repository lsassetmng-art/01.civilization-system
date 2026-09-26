# ============================================================
# LIFE OS HOME ROUTE CANONICALIZATION CHANGE NOTE
# ============================================================

status: canonical
system: life-os
layer: interface
domain: user-screens
document_type: versioned-change-note
owner: Boss
prepared_by: Zero
effective_date: 2026-09-27

# ============================================================
# PURPOSE
# ============================================================

Normalize the LifeOS entry route without silently replacing
the frozen Pass 4 interface contract.

# ============================================================
# CANONICAL DECISION
# ============================================================

canonical_entry_route:
/life/home

canonical_screen:
life_home_dashboard_screen

role:
Single canonical entry screen for the LifeOS Home / Dashboard experience.

# ============================================================
# COMPATIBILITY ROUTE
# ============================================================

legacy_route:
/life/dashboard

status:
deprecated compatibility route

behavior:
redirect

redirect_target:
/life/home

rules:
- /life/dashboard is not an independent canonical screen.
- /life/dashboard must not become the canonical LifeOS entry.
- implementation must converge canonical navigation to /life/home.
- compatibility redirect must not transform identity or session semantics.
- existing safe route/query context must be forwarded without inventing new field mappings.
- CivilizationOS-to-LifeOS identity/session mapping remains outside this delta.

# ============================================================
# NORMALIZATION TARGETS
# ============================================================

- 0903002_LIFE_DASHBOARD_UI_DETAIL.md
- 925220_LIFE_OS_SCREEN_STATEFLOW_EXACT_DESIGN_20260417.md
- 925230_LIFE_OS_FRONTEND_IMPLEMENTATION_MODULE_EXACT_DESIGN_20260417.md
- 125_LIFE_OS_PHYSICAL_PATH_ALIGNMENT_DELTA.md

# ============================================================
# NON-GOALS
# ============================================================

This change note does not:

- implement the LifeOS frontend
- create implementation directories
- move existing LifeOS applications
- modify Portal /lifeos
- modify Portal LifeOS menus
- modify Portal R25
- define civilizationId = actor_id
- define sessionRef = session_id
- modify database state
- authorize implementation migration

# ============================================================
# FINAL ROUTE CONTRACT
# ============================================================

/life/home
  canonical_entry=true
  screen=life_home_dashboard_screen

/life/dashboard
  canonical_entry=false
  compatibility_only=true
  deprecated=true
  redirect_target=/life/home

# ============================================================
# DECISION
# ============================================================

LifeOS canonical entry route is /life/home.

/life/dashboard remains only as a deprecated compatibility redirect
to /life/home.

No later implementation may silently reverse this relationship
without a new explicit versioned design delta.
