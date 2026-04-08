# ============================================================
# PRODUCT PORTFOLIO MANAGER BOUNDARY CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

boundary_definition:
ProductPortfolioManager operates as a BusinessOS application
that consumes authoritative product-related data from ERP
and produces strategic portfolio judgments inside BusinessOS.

businessos_side_authority:
- scoring views
- strategic grouping
- review comments
- proposal preparation
- prioritization
- meeting outcomes

erp_side_authority:
- master product identity
- posted sales
- posted cost
- posted stock
- posted accounting

integration_rule:
No application-side logic may silently mutate ERP truth.
All ERP-affecting actions must traverse an explicit integration route.
