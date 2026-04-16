#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200013_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of product detail and score detail surfaces
inside ProductPortfolioManager.

architecture_principles:
- product detail is the primary single-product judgment surface
- score detail is the primary explainability surface for evaluation outputs
- facts, snapshots, scores, classification, proposals, alerts, and forecast references must remain distinguishable
- product detail must support navigation into proposal, classification, review, approval, and history flows
- score detail must support explainability without masquerading as ERP truth
- device differences may change density, not meaning

# ============================================================
# 1. PRODUCT DETAIL ARCHITECTURAL ROLE
# ============================================================

product_detail_role:
- unify one product's operational and judgment context
- provide decision-ready visibility for a single product
- connect product facts, evaluations, classifications, proposals, alerts, and history
- serve as the main launch point for next actions on that product

product_detail_is_not:
- not merely a static profile page
- not a substitute for portfolio-wide comparison
- not a hidden approval or mutation shortcut

product_detail_core_sections:
- product identity section
- metric snapshot summary section
- KPI trend context section
- current score summary section
- lifecycle and classification section
- proposal summary section
- alert summary section
- forecast reference section
- comment/note section
- history / audit entry points
- source context section

# ============================================================
# 2. SCORE DETAIL ARCHITECTURAL ROLE
# ============================================================

score_detail_role:
- explain the evaluated meaning of scores
- show score component structure
- show version, period, and calculation timing
- support comparison of evaluation logic at the product level
- support review and classification reasoning

score_detail_is_not:
- not a replacement for KPI source detail
- not a hidden scoring configuration console
- not formal ERP accounting truth

score_detail_core_sections:
- score header section
- component score section
- score rationale summary section
- version and timing section
- period and currency context section
- classification suggestion context where supported
- related KPI basis entry points

# ============================================================
# 3. DETAIL SURFACE RELATION
# ============================================================

surface_relation:
product_detail:
- broad single-product judgment context

score_detail:
- narrow deep explanation context for evaluation outputs

architectural_rule:
Users should be able to move from product detail to score detail
without losing product identity, period context, or currency context.

# ============================================================
# 4. SOURCE VISIBILITY ARCHITECTURE
# ============================================================

source_visibility_architecture:
- ERP-derived facts must be visibly distinguishable
- product_metric_snapshot must be identifiable as snapshot/reference context
- product_score must be identifiable as application evaluation output
- forecast context must be identifiable as advisory reference
- classification must be identifiable as governed strategy meaning

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- stacked sections
- condensed summary first
- drill-in emphasis

tablet:
- stronger section pairing
- quicker cross-section scanning

pc:
- broader simultaneous section visibility
- denser score explanation and history visibility

cross_device_rule:
No device class may conceal the business meaning
of facts, scores, lifecycle, classification, or source boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Product detail and score detail architecture in ProductPortfolioManager
must support single-product judgment,
evaluation explainability,
and explicit source-boundary visibility.
EOF

cat <<'EOF' > "$BASE/050.flow/0500011_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_FORMAL_FLOW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across product detail and score detail surfaces.

flow_principles:
- product detail should minimize context switching for one-product judgment
- score detail should deepen evaluation explainability
- surface transitions should preserve product identity and judgment context
- next actions should remain explicit and governed

# ============================================================
# 1. PRODUCT DETAIL FLOW
# ============================================================

product_detail_flow:
1. open product detail from dashboard, list, comparison, alert, review, or proposal context
2. inspect product identity and current status
3. inspect metric snapshot summary
4. inspect KPI and current score summary
5. inspect lifecycle and classification context
6. inspect proposal, alert, and forecast context
7. choose next action:
   - open score detail
   - create/update classification draft
   - create/update proposal
   - add to review context where allowed
   - inspect history/audit
   - inspect share scope where allowed

inputs:
- portfolio_item_id
- period context
- reporting currency context
- locale context

outputs:
- single-product judgment understanding
- explicit next-action path

# ============================================================
# 2. SCORE DETAIL FLOW
# ============================================================

score_detail_flow:
1. open score detail from product detail or related judgment surface
2. inspect score header and total_score
3. inspect component scores
4. inspect score version and calculated time
5. inspect period and currency context
6. inspect classification suggestion context where supported
7. choose next action:
   - return to product detail
   - start classification draft
   - enter review context
   - refresh score where permitted by flow and policy

inputs:
- portfolio_item_id
- product_score_id or latest score context
- period context
- reporting currency context

outputs:
- clearer evaluation interpretation
- explicit bridge to classification/review flows

# ============================================================
# 3. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- product identity should remain visible when entering score detail
- score detail return path should restore product detail context
- period and reporting currency context should remain stable across the transition where practical
- stale vs refreshed score context should remain understandable

# ============================================================
# 4. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- no score available yet
- stale metric snapshot with newer product comments
- forecast reference unavailable
- mixed-currency monetary context requires explicit interpretation
- score version changed since prior view

exception_rules:
- missing score should not appear as zero score
- missing forecast should not imply forecast certainty absence of risk
- stale context should not be hidden where important to judgment
- changed score version should remain interpretable

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Product detail and score detail flow in ProductPortfolioManager
must support deep single-product understanding,
clear evaluation explainability,
and governed transition into action flows.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200016_PRODUCT_PORTFOLIO_MANAGER_PRODUCT_DETAIL_AND_SCORE_DETAIL_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER PRODUCT DETAIL AND SCORE DETAIL REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for product detail
and score detail surfaces without entering implementation code.

# ============================================================
# 1. PRODUCT DETAIL REQUIREMENTS
# ============================================================

product_detail_requirements:
- show product identity context
- show lifecycle_stage
- show current_classification_code
- show KPI/metric snapshot summary
- show current score summary
- show proposal summary
- show alert summary
- show forecast reference summary where available
- show comments/notes entry surface
- show history/audit entry surface
- show source context for ERP / forecast / score meaning

required_product_detail_fields_or_equivalent:
- product_code
- product_name
- category
- brand
- series where available
- lifecycle_stage
- current_classification_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- inventory_quantity where available
- growth_rate
- total_score
- alert flags or counts
- proposal flags or counts
- source_generated_at where available
- fetched_at where available

# ============================================================
# 2. SCORE DETAIL REQUIREMENTS
# ============================================================

score_detail_requirements:
- show total_score
- show sales_score
- show margin_score
- show growth_score
- show inventory_score
- show risk_score
- show strategic_score
- show score_version
- show calculated_at
- show score period context
- show reporting currency context where relevant
- show rationale summary or explanation entry
- show classification suggestion context where supported

# ============================================================
# 3. NEXT-ACTION REQUIREMENTS
# ============================================================

next_action_requirements:
- navigate from product detail to score detail
- navigate from product detail to classification flow
- navigate from product detail to proposal flow
- navigate from product detail to review session context where allowed
- navigate from product detail to history/audit view
- navigate from score detail back to product detail
- navigate from score detail into classification/review flows where supported

# ============================================================
# 4. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- distinguish ERP-derived values from application-owned score outputs
- distinguish lifecycle from classification
- distinguish alert severity from alert status
- distinguish forecast advisory context from ERP fact context
- distinguish score explanation from formal accounting meaning
- labels and explanatory text must be localization-ready

# ============================================================
# 5. DEVICE REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize summary-first layout
- allow drill-in for deeper sections

tablet:
- support faster switching among detail sections
- support clearer pairing of summary and explanation

pc:
- support denser simultaneous visibility across sections
- support deeper history/score context without excessive navigation

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and explanations
- multi-currency-safe monetary presentation
- no hidden authority shortcuts from detail widgets
- no implication that score equals ERP truth
- consistent meaning across devices

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement product detail
and score detail as core single-product judgment and explainability surfaces
with explicit context, source clarity, and action continuity.
EOF

echo "PATCHED: product detail and score detail formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
