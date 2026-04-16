# ============================================================
# MULTICURRENCY PROFIT PREVIEW MODEL
# ============================================================

status: canonical
layer: model
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines profit preview under multicurrency conditions.

fields:
- multicurrency_profit_preview_id
- sales_source_amount
- cost_source_amount
- gross_profit_source_amount
- sales_base_amount
- cost_base_amount
- gross_profit_base_amount
- display_currency_code
- exchange_rate_snapshot_id
- updated_at

rule:
Profit comparison must be base-currency-centered,
while display may remain display-currency-centered.
