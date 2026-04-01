# ============================================================
# AI ROBOT AUTONOMOUS AND ABNORMAL BEHAVIOR UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: ai-robot-autonomous-and-abnormal-behavior-ui-implementation
component: ai-robot-autonomous-and-abnormal-behavior-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Ai(Robot) autonomous and abnormal behavior UI
inside Civilization.

This document must align with:

- AI_ROBOT_AUTONOMOUS_AND_ABNORMAL_BEHAVIOR_ARCHITECTURE
- AI_ROBOT_AUTONOMOUS_AND_ABNORMAL_BEHAVIOR_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Ai(Robot) behavior UI must implement:

- normal-operation visibility
- contamination/override visibility
- abnormal-behavior visibility
- containment visibility
- recovery visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. normal operation summary
2. contamination summary
3. abnormal behavior summary
4. containment summary
5. recovery summary

This keeps abnormal robot posture readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Ai(Robot) behavior UI implementation must remain:

- robot-distinct
- contamination-aware
- containment-aware
- recovery-aware
