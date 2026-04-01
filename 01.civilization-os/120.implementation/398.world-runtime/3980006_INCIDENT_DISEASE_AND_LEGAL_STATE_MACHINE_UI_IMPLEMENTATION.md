# ============================================================
# INCIDENT DISEASE AND LEGAL STATE MACHINE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: incident-disease-and-legal-state-machine-ui-implementation
component: incident-disease-and-legal-state-machine-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for incident, disease, and legal state machine UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

This UI family must implement:

- incident progression visibility
- disease progression visibility
- detention/bail/release visibility
- history visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. incident summary
2. disease summary
3. detention summary
4. bail/release summary


# ============================================================
# 4. FINAL RULE
# ============================================================

Incident, disease, and legal state machine UI implementation must remain:

- state-explicit
- legal-process-aware
- intervention-aware
- history-aware
