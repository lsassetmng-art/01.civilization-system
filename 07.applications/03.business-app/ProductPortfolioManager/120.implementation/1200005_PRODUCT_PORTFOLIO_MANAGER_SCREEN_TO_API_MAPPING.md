# ============================================================
# PRODUCT PORTFOLIO MANAGER SCREEN TO API MAPPING
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

screen_to_api_mapping:

  dashboard:
    primary_routes:
      - /api/product-portfolio/list
      - /api/product-portfolio/alerts/list

  portfolio_list:
    primary_routes:
      - /api/product-portfolio/list

  product_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/score/refresh

  score_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/score/refresh

  classification_change:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/classification-draft/save
      - /api/product-portfolio/approval-request/create

  proposal_list:
    primary_routes:
      - /api/product-portfolio/list

  proposal_detail:
    primary_routes:
      - /api/product-portfolio/detail
      - /api/product-portfolio/proposal/save
      - /api/product-portfolio/approval-request/create

  review_session_list:
    primary_routes:
      - /api/product-portfolio/list

  review_session_detail:
    primary_routes:
      - /api/product-portfolio/review-decision/save
      - /api/product-portfolio/approval-request/create

  approval_queue:
    primary_routes:
      - /api/product-portfolio/approval-decision/save

  alert_list:
    primary_routes:
      - /api/product-portfolio/alerts/list
