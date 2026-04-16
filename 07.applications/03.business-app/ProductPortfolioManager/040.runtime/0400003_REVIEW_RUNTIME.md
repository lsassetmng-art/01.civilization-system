# ============================================================
# REVIEW RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

review_runtime:
- create review session
- gather target items
- load scores and proposals
- record management comments
- record decisions
- generate follow-up actions

decision_runtime_rule:
Decision must preserve before/after state
and attach ownership and timing.
