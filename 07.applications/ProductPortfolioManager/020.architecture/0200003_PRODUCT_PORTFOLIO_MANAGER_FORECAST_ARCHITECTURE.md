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
The application does not require forecast generation to reside internally.

forecast_usage:
- demand trend reference
- expected sales reference
- seasonal pattern reference
- confidence-based management support

forecast_design_rule:
All forecast values must carry source metadata,
generation timestamp, and confidence semantics.
