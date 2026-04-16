# ============================================================
# PRODUCT CLASSIFICATION MODELS
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entities:
- product_classification
- product_classification_draft

product_classification_fields:
- classification_id
- portfolio_item_id
- classification_code
- classification_reason
- decided_by_user_id
- decision_source_type
- effective_from
- effective_to
- current_flag
- created_at

product_classification_draft_fields:
- classification_draft_id
- portfolio_item_id
- proposed_classification_code
- proposed_reason
- based_score_id
- draft_by_user_id
- draft_status
- last_saved_at

classification_examples:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

rules:
- draft and final must remain separate
- approved classification history must not be erased
