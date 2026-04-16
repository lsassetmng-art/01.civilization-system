# ============================================================
# FORECAST REFERENCE INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

integration_purpose:
Attach forecast outputs to product judgment as advisory inputs.

required_metadata:
- forecast source
- forecast scope
- forecast period
- generated_at
- confidence
- fetched_at
