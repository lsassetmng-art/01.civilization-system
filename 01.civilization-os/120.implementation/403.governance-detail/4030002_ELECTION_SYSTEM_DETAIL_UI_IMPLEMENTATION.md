# ============================================================
# ELECTION SYSTEM DETAIL UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: election-system-detail-ui-implementation
component: election-system-detail-ui-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PRIMARY RESPONSIBILITY
# ============================================================

Election UI must implement:

- candidacy visibility
- eligibility visibility
- campaign visibility
- turnout visibility
- counting/certification visibility

# ============================================================
# 2. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. candidacy summary
2. campaign summary
3. turnout summary
4. counting summary
5. certification summary

# ============================================================
# 3. FINAL RULE
# ============================================================

Election UI implementation must remain:

- eligibility-aware
- turnout-aware
- certification-aware
