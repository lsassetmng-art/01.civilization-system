# ============================================================
# STATE AND SOCIETY WORLD PROGRESSION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: state-and-society-world-progression-ui-implementation
component: state-and-society-world-progression-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for state and society progression UI
inside Civilization.

This document must align with:

- STATE_AND_SOCIETY_WORLD_PROGRESSION_ARCHITECTURE
- STATE_AND_SOCIETY_WORLD_PROGRESSION_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

State and society progression UI must implement:

- legislation visibility
- public sentiment visibility
- political activity visibility
- diplomacy visibility
- fiscal posture visibility
- public-service posture visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The state-and-society dashboard should prioritize:

1. legislation summary
2. public sentiment summary
3. political activity summary
4. diplomacy summary
5. fiscal summary
6. public-service summary

This keeps state and society change readable early.


# ============================================================
# 4. LEGISLATION RULE
# ============================================================

Legislation screens should preserve
explicit legislative progression posture such as:

- draft
- submitted
- deliberating
- amended
- voted
- promulgated
- effective

Legislation must remain distinct
from executive enforcement.


# ============================================================
# 5. FINAL RULE
# ============================================================

State and society progression UI implementation must remain:

- legislation-aware
- sentiment-aware
- diplomacy-aware
- fiscal-aware
- society-aware
- time-driven
