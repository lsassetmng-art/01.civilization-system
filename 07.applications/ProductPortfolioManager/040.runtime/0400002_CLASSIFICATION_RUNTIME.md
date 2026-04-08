# ============================================================
# CLASSIFICATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

states:
- draft-suggestion
- review-pending
- approved
- rejected
- superseded

rules:
- suggested classification is not final classification
- approved change must create history
- classification history must remain append-oriented
