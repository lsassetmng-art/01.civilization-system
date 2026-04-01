# ============================================================
# PUBLIC AUTHORITY ACTIVITY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: public-authority-activity-ui-implementation
component: public-authority-activity-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for public authority activity UI
inside Civilization.

This document must align with:

- PUBLIC_AUTHORITY_ACTIVITY_ARCHITECTURE
- PUBLIC_AUTHORITY_ACTIVITY_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Public-authority UI must implement:

- administration activity visibility
- judiciary activity visibility
- police activity visibility
- fire and rescue visibility
- emergency-priority visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. administration summary
2. judiciary summary
3. police summary
4. fire/rescue summary
5. emergency-priority summary

This keeps authority activity readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Public authority activity UI implementation must remain:

- authority-aware
- emergency-priority-aware
- legally connected
- traceable
