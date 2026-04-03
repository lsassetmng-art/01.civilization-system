# ============================================================
# SIMULATION SPEED CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: simulation-speed-control
component: simulation-speed-control

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for pause, normal-speed,
accelerated progression,
and related speed-family control
inside Civilization.

# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Simulation speed must be separated from
Earth-equivalent time structure.

Representative speed families include:

- paused
- normal
- accelerated_low
- accelerated_high
- batch or catchup mode

# ============================================================
# 3. FINAL RULE
# ============================================================

Simulation speed control architecture must remain:

- time-structure-separated
- explicit
- controllable
