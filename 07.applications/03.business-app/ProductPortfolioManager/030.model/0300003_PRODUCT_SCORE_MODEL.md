# ============================================================
# PRODUCT SCORE MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_score

purpose:
Stores product evaluation outputs used for explanation,
comparison, and classification support.

fields:
- product_score_id
- portfolio_item_id
- score_period_type
- score_period_start
- score_period_end
- score_version
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score
- score_summary_text_key
- calculated_at
- calculation_basis_ref

rules:
- score version is mandatory
- explanation metadata must be preserved
- resource-key-based descriptions are preferred for multilingual support
