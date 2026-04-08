# ============================================================
# FORECAST REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Consume forecast outputs as contextual decision support.

required_metadata:
- forecast source
- forecast period
- generation timestamp
- confidence indicator
- product or category scope
