# ============================================================
# RUNTIME PARAMETER AND CADENCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: runtime-parameter-and-cadence
component: runtime-parameter-and-cadence

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for concrete runtime cadence,
tick parameter families,
simulation-speed families,
and foreground/background update posture
inside Civilization.

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization runtime must distinguish between:

- time structure
- runtime cadence
- update priority
- simulation-speed family

These must not remain implicit.

# ============================================================
# 3. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- TICK_PARAMETER_ARCHITECTURE
- FOREGROUND_AND_BACKGROUND_CADENCE_ARCHITECTURE
- SIMULATION_SPEED_CONTROL_ARCHITECTURE
- IDLE_AND_BATCH_UPDATE_ARCHITECTURE

# ============================================================
# 4. FINAL RULE
# ============================================================

Runtime parameter and cadence architecture must remain:

- explicit
- tunable
- scalable
- actor-priority-aware
