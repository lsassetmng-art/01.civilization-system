# ============================================================
# PRODUCT PORTFOLIO ITEM MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_portfolio_item

purpose:
Represents one product as a portfolio-managed target inside the application.

fields:
- portfolio_item_id
- company_id
- workspace_id
- product_id
- product_code
- product_name
- category_code
- category_name
- brand_code
- brand_name
- series_code
- series_name
- lifecycle_stage
- owner_user_id
- current_classification_code
- current_priority_rank
- active_flag
- created_at
- updated_at

notes:
- ERP identity remains external authority
- displayed names may be cached for usability
- strategic classification meaning is application-specific
