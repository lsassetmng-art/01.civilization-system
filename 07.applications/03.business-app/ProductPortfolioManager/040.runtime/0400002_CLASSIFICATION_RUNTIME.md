# ============================================================
# CLASSIFICATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

states:
- draft
- submitted
- approved
- rejected
- withdrawn
- superseded

rules:
- editing a draft must not replace an approved classification directly
- approval outcome must preserve before/after visibility
- current classification pointer must be updated only through valid finalization
