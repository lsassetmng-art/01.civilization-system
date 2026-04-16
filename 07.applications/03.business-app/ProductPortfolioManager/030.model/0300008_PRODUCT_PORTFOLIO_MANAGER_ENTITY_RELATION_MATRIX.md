# ============================================================
# PRODUCT PORTFOLIO MANAGER ENTITY RELATION MATRIX
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

entity_relation_matrix:

  product_portfolio_item:
    one_to_many:
      - product_metric_snapshot
      - product_score
      - product_classification
      - product_classification_draft
      - product_action_proposal
      - product_issue_note
      - product_comment
      - product_alert
      - product_forecast_reference
      - product_review_session_item
      - product_review_decision

  product_action_proposal:
    one_to_many:
      - product_action_proposal_history

  product_review_session:
    one_to_many:
      - product_review_session_item
      - product_review_decision

  product_approval_request:
    one_to_many:
      - product_approval_decision

read_patterns:
- portfolio list joins product_portfolio_item + latest product_metric_snapshot + latest product_score + alert/proposal flags
- product detail joins product_portfolio_item + latest snapshot + latest score + open proposals + open alerts + latest comments + latest forecast reference
- review detail joins product_review_session + product_review_session_item + product_review_decision + product_portfolio_item
- approval queue joins product_approval_request + latest target state
