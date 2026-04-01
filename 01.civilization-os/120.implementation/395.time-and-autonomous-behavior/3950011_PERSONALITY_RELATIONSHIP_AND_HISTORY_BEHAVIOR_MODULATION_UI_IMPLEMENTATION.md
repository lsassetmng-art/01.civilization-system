# ============================================================
# PERSONALITY RELATIONSHIP AND HISTORY BEHAVIOR MODULATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: personality-relationship-and-history-behavior-modulation-ui-implementation
component: personality-relationship-and-history-behavior-modulation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for behavior modulation UI
inside Civilization.

This document must align with:

- PERSONALITY_RELATIONSHIP_AND_HISTORY_BEHAVIOR_MODULATION_ARCHITECTURE
- PERSONALITY_RELATIONSHIP_AND_HISTORY_BEHAVIOR_MODULATION_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Behavior-modulation UI must implement:

- personality visibility
- relationship influence visibility
- environment and history visibility
- behavior-bias summary visibility
- modulation history visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. personality summary
2. relationship summary
3. environment summary
4. history summary
5. behavior-bias summary

This keeps actor-specific modulation readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Behavior modulation UI implementation must remain:

- actor-specific
- relationship-aware
- history-aware
- environment-aware
