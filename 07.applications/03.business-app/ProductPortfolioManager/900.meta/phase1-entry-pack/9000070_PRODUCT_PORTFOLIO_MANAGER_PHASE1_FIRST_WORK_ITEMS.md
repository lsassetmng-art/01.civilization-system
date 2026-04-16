# ============================================================
# PRODUCT PORTFOLIO MANAGER PHASE 1 FIRST WORK ITEMS
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the first work items for Phase 1 implementation.

first_work_items:
- fix exact request/response handling for portfolio list
- fix exact request/response handling for product detail
- fix exact request/response handling for score refresh
- fix exact request/response handling for classification draft save
- fix exact request/response handling for proposal save

then_after_that:
- wire model exactness against those routes
- wire screen-to-api mapping against those routes
- check authorization and boundary rules for those routes only

do_not_jump_first_to:
- approval queue
- full review session
- full audit console
- full notification routing
- full settings/preset work

formal_conclusion:
Phase 1 should begin from exact route handling,
not from peripheral features.
