# ============================================================
# SCHEDULE AND ACTIVITY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: schedule-and-activity-ui-implementation
component: schedule-and-activity-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for schedule and activity UI
inside Civilization.

This document must align with:

- SCHEDULE_AND_ACTIVITY_ARCHITECTURE
- SCHEDULE_AND_ACTIVITY_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Schedule and activity UI must implement:

- daily-cycle visibility
- work/school schedule visibility
- household and life activity visibility
- political/social activity visibility
- health/disruption activity visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. daily cycle summary
2. work/school summary
3. household activity summary
4. political/social activity summary
5. disruption activity summary

This keeps daily-life structure readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Schedule and activity UI implementation must remain:

- daily-cycle-aware
- work-aware
- school-aware
- household-aware
- disruption-aware
