# ============================================================
# PRODUCT PORTFOLIO ITEM MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_portfolio_item

fields:
- portfolio_item_id
- workspace_id
- company_id
- product_id
- product_code
- product_name
- category_code
- brand_code
- lifecycle_stage
- current_classification
- current_priority_rank
- owner_user_id
- status
- created_at
- updated_at

meaning:
Represents one managed product unit in the portfolio layer.
