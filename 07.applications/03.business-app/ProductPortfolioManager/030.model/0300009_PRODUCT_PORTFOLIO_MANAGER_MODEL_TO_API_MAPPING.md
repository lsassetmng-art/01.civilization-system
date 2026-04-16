# ============================================================
# PRODUCT PORTFOLIO MANAGER MODEL TO API MAPPING
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

model_to_api_mapping:

  /api/product-portfolio/list:
    reads:
      - product_portfolio_item
      - product_metric_snapshot
      - product_score
      - product_alert
      - product_action_proposal

  /api/product-portfolio/detail:
    reads:
      - product_portfolio_item
      - product_metric_snapshot
      - product_score
      - product_forecast_reference
      - product_alert
      - product_action_proposal
      - product_comment

  /api/product-portfolio/score/refresh:
    writes:
      - product_metric_snapshot
      - product_score
    reads:
      - product_portfolio_item
      - product_forecast_reference

  /api/product-portfolio/classification-draft/save:
    writes:
      - product_classification_draft

  /api/product-portfolio/proposal/save:
    writes:
      - product_action_proposal
      - product_action_proposal_history

  /api/product-portfolio/review-session/create:
    writes:
      - product_review_session

  /api/product-portfolio/review-decision/save:
    writes:
      - product_review_decision

  /api/product-portfolio/approval-request/create:
    writes:
      - product_approval_request

  /api/product-portfolio/approval-decision/save:
    writes:
      - product_approval_decision
      - product_approval_request

  /api/product-portfolio/alerts/list:
    reads:
      - product_alert
      - product_portfolio_item
