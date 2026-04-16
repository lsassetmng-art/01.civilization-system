# ============================================================
# PRODUCT PORTFOLIO MANAGER FORECAST ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

forecast_role:
Forecasting is consumed as a reference capability.
Forecast generation itself does not need to live inside this application.

forecast_usage:
- demand trend visibility
- expected sales visibility
- seasonality context
- forecast-versus-actual comparison
- advisory input into classification and proposal judgment

required_forecast_metadata:
- source
- generated_at
- period
- confidence
- scope
