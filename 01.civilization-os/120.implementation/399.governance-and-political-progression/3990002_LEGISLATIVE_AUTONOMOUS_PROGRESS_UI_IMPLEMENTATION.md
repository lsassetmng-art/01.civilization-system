# ============================================================
# LEGISLATIVE AUTONOMOUS PROGRESS UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: legislative-autonomous-progress-ui-implementation
component: legislative-autonomous-progress-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for legislative progression UI
inside Civilization.


# ============================================================
# 2. PRIMARY RESPONSIBILITY
# ============================================================

Legislative UI must implement:

- bill-pipeline visibility
- deliberation visibility
- amendment visibility
- voting visibility
- promulgation and effective-date visibility


# ============================================================
# 3. DASHBOARD INITIAL LOAD RULE
# ============================================================

The dashboard should prioritize:

1. bill pipeline summary
2. deliberation summary
3. amendment summary
4. voting summary
5. promulgation summary

Legislative stages must remain explicit.


# ============================================================
# 4. STAGE RULE
# ============================================================

Legislative screens should preserve
stage distinction such as:

- drafting
- submitted
- deliberating
- amended
- voted
- promulgated
- effective


# ============================================================
# 5. FINAL RULE
# ============================================================

Legislative UI implementation must remain:

- stage-aware
- amendment-aware
- voting-aware
- promulgation-aware
