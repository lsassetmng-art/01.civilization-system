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
