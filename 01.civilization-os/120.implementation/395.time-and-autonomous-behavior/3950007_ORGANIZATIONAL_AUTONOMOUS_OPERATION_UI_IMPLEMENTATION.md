# ============================================================
# ORGANIZATIONAL AUTONOMOUS OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: organizational-autonomous-operation-ui-implementation
component: organizational-autonomous-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for organization-level autonomous operation UI
inside Civilization.

This document must align with:

- ORGANIZATIONAL_AUTONOMOUS_OPERATION_ARCHITECTURE
- ORGANIZATIONAL_AUTONOMOUS_OPERATION_UI_INTERFACE


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Organization-autonomy UI must implement:

- public-organization visibility
- company-activity visibility
- queue/service progression visibility
- emergency preemption visibility
- organization history visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. organization summary
2. public-authority summary
3. company summary
4. queue-progress summary
5. emergency-preemption summary

This keeps organization-level progression readable early.


# ============================================================
# 4. FINAL RULE
# ============================================================

Organizational autonomous operation UI implementation must remain:

- organization-aware
- queue-aware
- emergency-aware
- traceable
