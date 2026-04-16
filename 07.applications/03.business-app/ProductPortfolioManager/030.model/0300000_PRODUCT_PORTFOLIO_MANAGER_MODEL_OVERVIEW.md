# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL OVERVIEW
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

model_layers:
1. ERP reference layer
2. application judgment layer
3. operational support layer

core_entities:
- product_portfolio_item
- product_metric_snapshot
- product_score
- product_classification
- product_classification_draft
- product_action_proposal
- product_review_session
- product_review_decision
- product_approval_request
- product_audit_event
