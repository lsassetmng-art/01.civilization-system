# ============================================================
# USER AND AI HUMAN INTERVENTION AND RECOVERY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: user-and-ai-human-intervention-and-recovery-ui-implementation
component: user-and-ai-human-intervention-and-recovery-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for intervention and recovery UI
for User and Ai(Human)
inside Civilization.

This document must align with:

- USER_AND_AI_HUMAN_INTERVENTION_AND_RECOVERY_ARCHITECTURE
- USER_AND_AI_HUMAN_INTERVENTION_AND_RECOVERY_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- avoidance visibility
- recovery visibility
- company-service recovery visibility
- public-service recovery visibility
- legal-release and bail visibility
- user vs Ai(Human) charging difference visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. avoidance summary
2. recovery summary
3. company-service summary
4. public-service summary
5. legal-release summary

This keeps intervention posture readable early.


# ============================================================
# 4. USER VS AI(HUMAN) DIFFERENCE RULE
# ============================================================

The UI must make explicit that:

- User may perform external paid charging where supported
- Ai(Human) may not perform external paid charging

Other service-based recovery routes
may remain structurally similar.


# ============================================================
# 5. FINAL RULE
# ============================================================

Intervention and recovery UI implementation must remain:

- recovery-aware
- service-aware
- legal-process-aware
- charging-difference-aware
