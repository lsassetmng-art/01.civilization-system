# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 ROUTE-BY-ROUTE CHECKLIST
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Provides a route-by-route checklist for Phase 1.

route_checklist:

  portfolio_list:
    - request contract understood
    - response contract understood
    - list fields aligned with model
    - source boundary not blurred

  product_detail:
    - request contract understood
    - response contract understood
    - detail sections aligned with screen mapping
    - ERP / score / forecast meanings separated

  score_refresh:
    - refresh payload understood
    - score output contract understood
    - score version / calculated_at preserved
    - stale vs fresh meaning preserved

  classification_draft_save:
    - draft payload understood
    - classification vs lifecycle meaning preserved
    - draft vs approved meaning preserved
    - approval boundary not bypassed

  proposal_save:
    - proposal payload understood
    - proposal vs execution meaning preserved
    - proposal vs approval meaning preserved
    - owner / due / priority context preserved

formal_conclusion:
Each route should be checked independently before implementation begins.
