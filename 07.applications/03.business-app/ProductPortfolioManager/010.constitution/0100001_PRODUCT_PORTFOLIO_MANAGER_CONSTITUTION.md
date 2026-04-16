# ============================================================
# PRODUCT PORTFOLIO MANAGER CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

mission:
Provide a practical application layer
for product portfolio evaluation, classification,
proposal management, review support, and approval traceability.

in_scope:
- product portfolio visibility
- score-based evaluation
- strategic product classification
- action proposal support
- review meeting support
- approval-oriented workflow
- history and audit support

out_of_scope:
- replacing ERP product master
- replacing ERP accounting or inventory logic
- acting as a full merchandise planning platform
- acting as a full PIM/PXM platform
- silently mutating ERP truth

constitutional_rules:
1. ERP remains the source of truth for formal product, sales, cost, and inventory facts.
2. Portfolio classifications are strategy labels, not ERP master categories.
3. A suggested classification is not a final classification.
4. Proposals must not auto-apply without explicit approval where policy requires it.
5. Important decisions must remain attributable to actors and times.
6. Multi-language and multi-currency readiness are first-class requirements.
