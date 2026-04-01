# ============================================================
# ACTOR SCHEDULER RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: actor-scheduler-runtime-ui-implementation
component: actor-scheduler-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for actor scheduler UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Scheduler UI must implement:

- active actor update visibility
- background actor update visibility
- cadence visibility
- priority visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. active actor summary
2. background actor summary
3. cadence summary
4. priority summary


# ============================================================
# 4. FINAL RULE
# ============================================================

Actor scheduler UI implementation must remain:

- cadence-aware
- priority-aware
- active-vs-background-aware
