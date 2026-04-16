# ============================================================
# PRODUCT PORTFOLIO MANAGER SCREEN ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_list:
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
- filter detail
- comparison board
- settings
- share scope
- audit history

screen_architecture_rules:
- screens must support the full judgment loop:
  visibility -> comparison -> proposal -> review -> approval -> audit
- phone layouts may reduce simultaneous density but not business capability
- pc and tablet layouts should strengthen comparison and review efficiency
