# ============================================================
# PRODUCT PORTFOLIO MANAGER BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

boundary_summary:
ProductPortfolioManager uses ERP facts and forecast references
to support business-side portfolio judgment.

erp_side_authority:
- product master identity
- formal sales values
- formal cost values
- formal inventory values
- formal accounting meaning

application_side_authority:
- product scores
- strategic classifications
- product action proposals
- review decisions
- approval history
- comments and notes
- alerts and audit records

integration_rule:
ERP-affecting actions must traverse an explicit controlled route.
