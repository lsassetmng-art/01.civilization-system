# ============================================================
# SCREEN REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_requirements:
- dashboard
- portfolio list
- product detail
- score detail
- classification change
- proposal list
- proposal detail
- review session list
- review session detail
- approval queue
- alert list
- comparison board
- settings
- share scope
- audit history

screen_rules:
- phone layouts prioritize vertical flow
- tablet layouts may support split-view review
- pc layouts should maximize comparison density
