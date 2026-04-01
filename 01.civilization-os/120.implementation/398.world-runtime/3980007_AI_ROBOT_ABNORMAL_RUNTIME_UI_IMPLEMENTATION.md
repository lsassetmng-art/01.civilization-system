# ============================================================
# AI ROBOT ABNORMAL RUNTIME UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: ai-robot-abnormal-runtime-ui-implementation
component: ai-robot-abnormal-runtime-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for Ai(Robot) abnormal runtime UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Ai(Robot) abnormal runtime UI must implement:

- contamination-state visibility
- runaway/override visibility
- containment visibility
- recovery/revalidation visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. contamination summary
2. runaway summary
3. containment summary
4. recovery summary


# ============================================================
# 4. FINAL RULE
# ============================================================

Ai(Robot) abnormal runtime UI implementation must remain:

- robot-specific
- contamination-aware
- containment-aware
- recovery-aware
