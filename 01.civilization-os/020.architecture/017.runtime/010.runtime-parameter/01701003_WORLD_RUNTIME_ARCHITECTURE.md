# ============================================================
# WORLD RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: world-runtime
component: world-runtime

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical runtime architecture
for progressing Civilization world state
through executable simulation flow.

This document covers:

- tick runtime
- scheduler runtime
- movement runtime
- facility usage runtime
- state-machine runtime
- intervention runtime
- map reflection runtime


# ============================================================
# 2. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- WORLD_TICK_EXECUTION_RUNTIME_ARCHITECTURE
- ACTOR_SCHEDULER_RUNTIME_ARCHITECTURE
- PATHFINDING_AND_MOVEMENT_RUNTIME_ARCHITECTURE
- FACILITY_USAGE_AND_QUEUE_RUNTIME_ARCHITECTURE
- INCIDENT_DISEASE_AND_LEGAL_STATE_MACHINE_ARCHITECTURE
- AI_ROBOT_ABNORMAL_RUNTIME_ARCHITECTURE
- PLAYER_INTERVENTION_RUNTIME_ARCHITECTURE
- MAP_REFLECTION_AND_WORLD_VISUAL_RUNTIME_ARCHITECTURE


# ============================================================
# 3. FINAL RULE
# ============================================================

World runtime architecture must remain:

- executable
- scheduler-aware
- state-machine-capable
- intervention-capable
- world-reflection-capable

## Exact Runtime Queue Boundary
## Exact Runtime Queue Boundary

Runtime queue state, scheduler state, and movement state
are runtime truths.

They may drive canonical mutation,
but they are not identical to canonical domain state.

## Exact Runtime Surface Split

The following must remain separate:

- world tick execution
- actor scheduler
- pathfinding and movement
- facility usage and queue
- incident runtime
- player intervention runtime
- map reflection runtime

## Exact Runtime To Canonical Rule

Runtime may propose or execute approved change,
but runtime queue truth must not be confused with
canonical world, government, market, or persona truth.
