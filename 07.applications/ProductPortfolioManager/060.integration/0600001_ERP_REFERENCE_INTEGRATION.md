# ============================================================
# ERP REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Read product-related operational truth from ERP
without transferring strategic authority away from BusinessOS.

reference_objects:
- product identity
- sales aggregates
- margin aggregates
- inventory indicators
- lifecycle indicators where available
