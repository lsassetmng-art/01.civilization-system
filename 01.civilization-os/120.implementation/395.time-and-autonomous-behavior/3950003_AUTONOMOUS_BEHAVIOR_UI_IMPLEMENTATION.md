# ============================================================
# AUTONOMOUS BEHAVIOR UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: autonomous-behavior-ui-implementation
component: autonomous-behavior-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for autonomous behavior UI
inside Civilization.

This document must align with:

- AUTONOMOUS_BEHAVIOR_ARCHITECTURE
- AUTONOMOUS_BEHAVIOR_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Autonomous behavior UI must implement:

- actor behavior visibility
- movement visibility
- need-state visibility
- event participation visibility
- emergency deviation visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. actor state summary
2. movement summary
3. need summary
4. event participation summary
5. emergency deviation summary

This keeps active behavior readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Autonomous behavior UI implementation must remain:

- actor-aware
- movement-aware
- need-aware
- event-aware
- emergency-compatible
