#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/010.constitution/0100003_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_CONSTITUTION.md"
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
EOF

cat <<'EOF' > "$BASE/020.architecture/0200007_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines architectural structure for lifecycle handling
and strategic classification handling.

architecture_principles:
- lifecycle is contextual input
- classification is managed judgment output
- classification architecture must support suggestion, draft, approval, and final history
- lifecycle architecture must support visibility and comparison
- both meanings must remain usable in list, detail, review, and audit surfaces

# ============================================================
# 1. LIFECYCLE ARCHITECTURAL ROLE
# ============================================================

lifecycle_role:
- provide product-phase context
- support comparison across products
- contextualize score interpretation
- contextualize proposal relevance
- support review-session understanding

official_lifecycle_stages:
- unknown
- launch
- growth
- mature
- decline
- retired

# ============================================================
# 2. CLASSIFICATION ARCHITECTURAL ROLE
# ============================================================

classification_role:
- represent product strategy position
- support portfolio balancing
- support review and proposal prioritization
- support ranking and dashboard segmentation
- support audit and history explanation

official_classification_codes:
- focus
- growth
- profit_core
- maintain
- improve
- risk_watch
- retire_candidate
- seasonal
- test

# ============================================================
# 3. CLASSIFICATION LIFECYCLE STATES
# ============================================================

classification_management_states:
- draft
- submitted
- approved
- rejected
- withdrawn
- superseded

architectural_rule:
Management state of a classification draft
is different from business meaning of classification code itself.

# ============================================================
# 4. SCREEN USAGE ARCHITECTURE
# ============================================================

screen_usage:
portfolio_list:
- show lifecycle_stage
- show current_classification_code
- allow filtering by both

product_detail:
- explain lifecycle context
- explain current classification
- show classification history

review_session:
- compare products across lifecycle and classification combinations
- allow decisions based on both contexts

audit_history:
- preserve before/after classification meaning
- preserve lifecycle context where relevant to explanation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle is an input architecture.
Classification is a managed decision architecture.
Both must remain visible, comparable, and historically explainable.
EOF

cat <<'EOF' > "$BASE/030.model/0300011_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_MODEL_FORMAL_DESIGN.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800008_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for interpreting lifecycle and classification.

policy_principles:
- lifecycle should not silently become classification
- classification should remain explicit and reviewable
- high-impact classification changes may require approval
- lifecycle interpretation should remain consistent across screens and locales

# ============================================================
# 1. LIFECYCLE POLICY
# ============================================================

lifecycle_policy:
- lifecycle expresses business phase context
- lifecycle may be sourced or inferred according to policy, but meaning must remain consistent
- retired lifecycle should not be confused with retire_candidate classification
- unknown lifecycle is acceptable when confidence is not sufficient

# ============================================================
# 2. CLASSIFICATION POLICY
# ============================================================

classification_policy:
- classification is strategic portfolio meaning
- classification should carry reason context when changed
- classification should be explainable from supporting context
- classification should not silently change because of score recalculation alone

# ============================================================
# 3. RELATION POLICY
# ============================================================

relation_policy:
- launch products may be focus, growth, test, or other classifications
- mature products may still be focus or profit_core
- decline products may still be maintain under some business strategies
- retire_candidate requires explicit strategic meaning, not mere lifecycle decline

# ============================================================
# 4. CHANGE POLICY
# ============================================================

change_policy:
- lifecycle updates and classification changes are separate actions
- classification updates should be historically visible
- approval may be required for high-impact classification transitions
- policy exceptions should remain explicit and auditable

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Lifecycle and classification policy in ProductPortfolioManager
must preserve clear meaning boundaries
while still allowing lifecycle context to inform strategic review.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200010_PRODUCT_PORTFOLIO_MANAGER_CLASSIFICATION_AND_LIFECYCLE_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION AND LIFECYCLE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for lifecycle and classification handling
without entering implementation code.

# ============================================================
# 1. REQUIRED DISPLAY CAPABILITIES
# ============================================================

required_display_capabilities:
- show lifecycle_stage in portfolio list
- show current_classification_code in portfolio list
- show lifecycle and classification together in product detail
- show classification history in history surfaces
- support filtering by lifecycle and classification
- support comparison views across lifecycle/classification combinations

# ============================================================
# 2. REQUIRED EDITING CAPABILITIES
# ============================================================

required_editing_capabilities:
- create classification draft
- update classification draft while allowed
- submit classification draft
- finalize classification where policy permits
- keep lifecycle updates and classification changes as separate actions

# ============================================================
# 3. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain lifecycle as product-phase meaning
- explain classification as strategy meaning
- avoid implying they are the same field
- show reason and support context for classification changes where relevant

# ============================================================
# 4. REQUIRED HISTORY CAPABILITIES
# ============================================================

required_history_capabilities:
- show previous approved classifications
- show current approved classification
- distinguish draft from approved meaning
- preserve before/after comparison for classification changes

# ============================================================
# 5. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels for lifecycle and classification
- cross-device consistent meaning
- no hidden classification changes during score refresh
- no collapse of lifecycle and classification into one display concept

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must present lifecycle and classification
as distinct but related judgment surfaces,
with clear explanation, filtering, and history behavior.
EOF

echo "PATCHED: classification and lifecycle formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/010.constitution" -maxdepth 1 -type f | sort
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/030.model" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
