# ============================================================
# CITY AUTONOMOUS PROGRESS UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: city-autonomous-progress-ui-implementation
component: city-autonomous-progress-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for city progression UI
inside Civilization.

This document must align with:

- CITY_AUTONOMOUS_PROGRESS_ARCHITECTURE
- CITY_AUTONOMOUS_PROGRESS_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

City progression UI must implement:

- city growth and decline visibility
- district change visibility
- congestion visibility
- infrastructure burden visibility
- redevelopment pressure visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

City progression dashboard should prioritize:

1. city scope summary
2. growth / decline summary
3. district change summary
4. congestion summary
5. service stress summary

This keeps urban change readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

City progression UI implementation must remain:

- city-scale
- district-aware
- burden-visible
- change-oriented
