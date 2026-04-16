# ============================================================
# SCORE REFRESH OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

refresh_modes:
- manual refresh
- scheduled refresh
- pre-review forced refresh

rule:
Any visible score must be attributable to a refresh moment and score version.
