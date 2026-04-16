# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE CONSTITUTION
# ============================================================

status: canonical
layer: constitution
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional meaning of classification and lifecycle
inside ProductPortfolioManager.

constitutional_principles:
- lifecycle and classification are not the same thing
- lifecycle expresses product-phase meaning
- classification expresses strategy judgment meaning
- ERP category and portfolio classification are not the same thing
- classification must remain reviewable and explainable
- lifecycle may influence judgment but must not silently decide strategy
- draft classification and approved classification must remain distinct

# ============================================================
# 1. LIFECYCLE MEANING
# ============================================================

lifecycle_meaning:
Lifecycle expresses where a product stands in its business life,
such as launch, growth, mature, decline, or retired.

lifecycle_is_not:
- not a proposal
- not a final strategy decision
- not identical to sales strength
- not identical to classification

# ============================================================
# 2. CLASSIFICATION MEANING
# ============================================================

classification_meaning:
Classification expresses the strategic portfolio position
assigned to a product by the application and its governance flow.

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

classification_is_not:
- not an ERP master category
- not a hidden automation result
- not automatically implied by lifecycle alone

# ============================================================
# 3. RELATION BETWEEN LIFECYCLE AND CLASSIFICATION
# ============================================================

relationship_principles:
- lifecycle may inform classification
- classification may differ across products with the same lifecycle
- a launch product is not automatically focus
- a mature product is not automatically maintain
- a decline product is not automatically retire_candidate
- strategy judgment must remain explicit

# ============================================================
# 4. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must treat lifecycle and classification
as distinct but related meanings,
with lifecycle describing product phase
and classification describing portfolio judgment.
