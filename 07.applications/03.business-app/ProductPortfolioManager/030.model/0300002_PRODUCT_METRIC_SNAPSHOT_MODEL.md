# ============================================================
# PRODUCT METRIC SNAPSHOT MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_metric_snapshot

purpose:
Preserves a judgment-time snapshot of product metrics
for explainability and reproducibility.

fields:
- metric_snapshot_id
- portfolio_item_id
- metric_period_type
- metric_period_start
- metric_period_end
- transaction_currency_code
- reporting_currency_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- cost_amount
- inventory_quantity
- inventory_amount
- growth_rate
- previous_period_sales_amount
- previous_year_sales_amount
- source_system_code
- source_generated_at
- fetched_at

rules:
- monetary values require explicit currency semantics
- snapshot values are not ERP truth ownership
