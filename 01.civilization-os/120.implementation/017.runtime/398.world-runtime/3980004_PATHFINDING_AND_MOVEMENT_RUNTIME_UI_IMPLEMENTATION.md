# ============================================================
# PATHFINDING AND MOVEMENT RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: pathfinding-and-movement-runtime-ui-implementation
component: pathfinding-and-movement-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for movement runtime UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Movement runtime UI must implement:

- route resolution visibility
- disruption/blockage visibility
- emergency deviation visibility
- movement-failure visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. route summary
2. blockage summary
3. emergency deviation summary
4. movement failure summary


# ============================================================
# 4. FINAL RULE
# ============================================================

Movement runtime UI implementation must remain:

- route-aware
- blockage-aware
- emergency-aware
