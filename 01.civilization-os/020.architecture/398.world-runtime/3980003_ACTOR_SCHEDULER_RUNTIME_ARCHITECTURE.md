# ============================================================
# ACTOR SCHEDULER RUNTIME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: actor-scheduler-runtime
component: actor-scheduler-runtime

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical runtime architecture
for actor scheduling and update dispatch
inside Civilization.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Not all actors update
with the same cadence.

The scheduler must support:

- active visible actors
- nearby actors
- background actors
- organizational actors
- low-frequency environmental actors


# ============================================================
# 3. FINAL RULE
# ============================================================

Actor scheduler runtime architecture must remain:

- cadence-aware
- scalable
- actor-priority-aware
- load-manageable
