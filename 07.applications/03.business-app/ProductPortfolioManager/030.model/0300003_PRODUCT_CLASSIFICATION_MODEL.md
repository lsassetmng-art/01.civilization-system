# ============================================================
# PRODUCT CLASSIFICATION MODEL
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity: product_classification

fields:
- classification_id
- portfolio_item_id
- classification_code
- effective_from
- effective_to
- decided_by
- decision_reason
- decision_source
- created_at

classification_examples:
- focus
- growth
- profit-core
- maintain
- improve
- risk-watch
- retire-candidate
- seasonal
