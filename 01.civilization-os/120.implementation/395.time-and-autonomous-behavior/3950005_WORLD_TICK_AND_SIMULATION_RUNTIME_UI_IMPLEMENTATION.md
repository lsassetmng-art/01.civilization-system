# ============================================================
# WORLD TICK AND SIMULATION RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: world-tick-and-simulation-runtime-ui-implementation
component: world-tick-and-simulation-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for world tick and simulation runtime UI
inside Civilization.

This document must align with:

- WORLD_TICK_AND_SIMULATION_RUNTIME_ARCHITECTURE
- WORLD_TICK_AND_SIMULATION_RUNTIME_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Simulation runtime UI must implement:

- tick visibility
- cadence visibility
- update-granularity visibility
- active/background update visibility
- runtime load visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The runtime dashboard should prioritize:

1. tick summary
2. cadence summary
3. active-update summary
4. background-update summary
5. runtime load summary

This keeps simulation-runtime posture readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

World tick and simulation runtime UI implementation must remain:

- tick-aware
- cadence-aware
- granularity-aware
- load-visible
