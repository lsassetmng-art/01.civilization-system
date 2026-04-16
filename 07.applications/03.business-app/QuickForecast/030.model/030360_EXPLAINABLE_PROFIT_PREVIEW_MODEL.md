# ============================================================
# EXPLAINABLE PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines explainable profit preview.

fields:
- explainable_profit_preview_id
- profit_preview_id
- sales_driver_summary
- cost_driver_summary
- margin_driver_summary
- major_assumption_summary
- uncertainty_summary
- risk_summary
- updated_at

rule:
Profit preview must expose reasoning,
not only output values.
