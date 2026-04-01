# ============================================================
# CIVILIZATION WORLD PROGRESSION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: civilization-world-progression-ui-implementation
component: civilization-world-progression-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for world progression UI
inside Civilization.

This document must align with:

- CIVILIZATION_WORLD_PROGRESSION_ARCHITECTURE
- CIVILIZATION_WORLD_PROGRESSION_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

World progression UI must implement:

- world-level summary visibility
- domain-separated drilldown
- time-aware progression visibility
- progression alert visibility
- history visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

World progression dashboard should prioritize:

1. time summary
2. city progression summary
3. environment and disaster summary
4. state and society summary
5. space and cosmic summary
6. alert summary

The dashboard should become usable
as soon as world-summary posture is available.


# ============================================================
# 4. DOMAIN ENTRY RULE
# ============================================================

Each progression domain should open
as a distinct progression family.

The world dashboard must not collapse:

- city progression
- environment progression
- state progression
- space progression

into one opaque global state view.


# ============================================================
# 5. FINAL RULE
# ============================================================

World progression UI implementation must remain:

- summary-first
- domain-separated
- time-aware
- alert-aware
