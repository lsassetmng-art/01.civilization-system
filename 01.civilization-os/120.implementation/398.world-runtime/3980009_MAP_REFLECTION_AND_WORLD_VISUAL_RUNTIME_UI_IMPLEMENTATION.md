# ============================================================
# MAP REFLECTION AND WORLD VISUAL RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: map-reflection-and-world-visual-runtime-ui-implementation
component: map-reflection-and-world-visual-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for map reflection and world visual runtime UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Map reflection UI must implement:

- facility-state reflection visibility
- infrastructure reflection visibility
- city-change reflection visibility
- disaster reflection visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. facility reflection summary
2. infrastructure reflection summary
3. city-change summary
4. disaster reflection summary


# ============================================================
# 4. FINAL RULE
# ============================================================

Map reflection UI implementation must remain:

- map-aware
- change-visible
- state-reflective
- disaster-aware
