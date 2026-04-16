# ============================================================
# PRODUCT SCORE MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_score

fields:
- product_score_id
- portfolio_item_id
- score_period_type
- score_period_start
- score_period_end
- transaction_currency_code
- reporting_currency_code
- sales_score
- margin_score
- growth_score
- inventory_score
- strategic_score
- risk_score
- opportunity_score
- total_score
- score_version
- calculated_at

meaning:
Stores explainable scoring outputs for a portfolio item.

currency_rule:
Monetary interpretation must never rely on an implicit single currency assumption.
