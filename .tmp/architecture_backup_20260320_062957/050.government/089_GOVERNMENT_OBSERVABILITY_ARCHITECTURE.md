# ============================================================
# GOVERNMENT OBSERVABILITY
# ============================================================

status: canonical
layer: architecture

definition:
Observability monitors government actions.

rules:
- read-only
- no mutation

final_rule:
Observation must not affect state.
