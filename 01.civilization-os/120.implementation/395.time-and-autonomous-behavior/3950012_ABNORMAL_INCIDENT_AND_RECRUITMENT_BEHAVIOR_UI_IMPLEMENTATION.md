# ============================================================
# ABNORMAL INCIDENT AND RECRUITMENT BEHAVIOR UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: abnormal-incident-and-recruitment-behavior-ui-implementation
component: abnormal-incident-and-recruitment-behavior-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for abnormal, incident, and recruitment behavior UI
inside Civilization.

This document must align with:

- ABNORMAL_INCIDENT_AND_RECRUITMENT_BEHAVIOR_ARCHITECTURE
- ABNORMAL_INCIDENT_AND_RECRUITMENT_BEHAVIOR_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- abnormal-behavior visibility
- incident-involvement visibility
- victim/witness visibility
- recruitment/scouting visibility
- history visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. abnormal-behavior summary
2. incident summary
3. victim/witness summary
4. recruitment summary
5. scouting summary

This keeps non-routine posture readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Abnormal, incident, and recruitment behavior UI implementation must remain:

- non-routine-aware
- incident-aware
- recruitment-aware
- history-aware
