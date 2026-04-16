# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines model semantics for lifecycle and classification.

model_principles:
- lifecycle lives on product_portfolio_item as contextual state
- approved classification lives in product_classification
- draft classification lives in product_classification_draft
- current classification pointer may exist on product_portfolio_item for list usability
- history must remain reconstructable

# ============================================================
# 1. LIFECYCLE MODEL SEMANTICS
# ============================================================

primary_lifecycle_entity:
- product_portfolio_item

lifecycle_field:
- lifecycle_stage

official_lifecycle_values:
- unknown
- launch
- growth
- mature
- decline
- retired

lifecycle_semantics:
unknown:
  meaning: lifecycle not yet confidently determined
launch:
  meaning: early introduction phase
growth:
  meaning: expanding adoption phase
mature:
  meaning: stable or established phase
decline:
  meaning: weakening or shrinking phase
retired:
  meaning: product no longer active as a live business offering

# ============================================================
# 2. CLASSIFICATION MODEL SEMANTICS
# ============================================================

approved_classification_entity:
- product_classification

draft_classification_entity:
- product_classification_draft

current_pointer_field:
- product_portfolio_item.current_classification_code

official_classification_values:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

classification_semantics:
focus:
  meaning: high-priority strategic emphasis product
growth:
  meaning: product with expansion emphasis
profit_core:
  meaning: profitability-important core product
maintain:
  meaning: stable keep-running product
improve:
  meaning: product requiring active improvement effort
risk_watch:
  meaning: product needing caution and closer monitoring
retire_candidate:
  meaning: product under retirement consideration
seasonal:
  meaning: product with recurring seasonal importance
test:
  meaning: exploratory or experimental product

# ============================================================
# 3. HISTORY SEMANTICS
# ============================================================

history_semantics:
- approved classification rows preserve strategic timeline
- draft rows preserve pre-finalization work
- effective_from and effective_to support approved-history interpretation
- current_flag identifies latest approved classification row
- current_classification_code on product_portfolio_item is a convenience pointer, not full history

# ============================================================
# 4. RELATION SEMANTICS
# ============================================================

relation_semantics:
- lifecycle_stage may influence review interpretation
- classification_code may influence dashboard and filtering behavior
- lifecycle_stage does not replace classification_code
- classification_code does not replace lifecycle_stage

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The model must preserve lifecycle as contextual product phase
and classification as governed strategy meaning,
with clear support for draft/final separation and historical traceability.
