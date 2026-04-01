# ============================================================
# CIVILIZATION TIME AND AUTONOMOUS BEHAVIOR UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: civilization-time-and-autonomous-behavior-ui-implementation
component: civilization-time-and-autonomous-behavior-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for the upper time and autonomous behavior UI
inside Civilization.

This document must align with:

- CIVILIZATION_TIME_AND_AUTONOMOUS_BEHAVIOR_ARCHITECTURE
- CIVILIZATION_TIME_AND_AUTONOMOUS_BEHAVIOR_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- upper summary visibility
- domain-separated drilldown
- actor and abnormal-state visibility
- intervention visibility
- time-aware navigation


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. calendar/time summary
2. autonomous actor summary
3. schedule summary
4. abnormal behavior summary
5. intervention summary
6. organization summary

This keeps world-life posture readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Time and autonomous behavior UI implementation must remain:

- summary-first
- domain-separated
- time-aware
- actor-aware
- abnormal-state-aware
