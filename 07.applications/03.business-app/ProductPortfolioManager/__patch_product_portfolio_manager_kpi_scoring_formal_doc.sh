#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200006_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architectural role of KPIs and scoring in ProductPortfolioManager.
KPI visibility and scoring are central to product judgment,
but they must remain explainable, versioned, and bounded by source context.

architecture_principles:
- KPI visibility and scoring are judgment-support architecture, not ERP truth replacement
- score generation must remain explainable
- score outputs must remain attributable to period and version
- KPI inputs and score outputs must remain distinguishable
- scoring should support comparison, classification, proposal, and review flows
- forecast references may inform scoring context but must remain advisory

# ============================================================
# 1. KPI ARCHITECTURAL ROLE
# ============================================================

kpi_architectural_role:
- provide product performance visibility
- support cross-product comparison
- support classification review
- support proposal prioritization
- support review-session comparison
- support management explanation

kpi_is_not:
- a replacement for formal ERP accounting truth
- a hidden automation engine for final business decisions
- a permission to skip review or approval

# ============================================================
# 2. KPI FAMILIES
# ============================================================

official_kpi_families:
- sales scale KPIs
- profitability KPIs
- growth KPIs
- inventory health KPIs
- forecast comparison KPIs
- strategic weighting KPIs
- review-operation KPIs

sales_scale_kpis:
- sales_amount
- sales_quantity
- previous_period_sales_amount
- previous_year_sales_amount

profitability_kpis:
- gross_profit_amount
- gross_profit_rate
- cost_amount

growth_kpis:
- growth_rate
- period_over_period_change
- year_over_year_change

inventory_health_kpis:
- inventory_quantity
- inventory_amount
- inventory-related risk indicators where available

forecast_comparison_kpis:
- forecast_quantity
- forecast_sales_amount
- forecast_gap indicators
- confidence_level context

strategic_weighting_kpis:
- strategic_score
- risk_score
- total_score
- priority rank support outputs

review_operation_kpis:
- review target counts
- proposal counts
- alert counts
- overdue counts

# ============================================================
# 3. SCORING ARCHITECTURAL ROLE
# ============================================================

scoring_architectural_role:
Scoring converts KPI and contextual judgment inputs
into explainable comparison outputs used by the application.

scoring_outputs:
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score

scoring_usage:
- list ranking
- product detail explanation
- classification suggestion support
- proposal prioritization support
- review-session comparison support

# ============================================================
# 4. SCORE INPUT LAYERS
# ============================================================

score_input_layers:
- fact input layer
- reference input layer
- policy/configuration layer
- version layer

fact_input_layer:
- product_metric_snapshot values
- ERP-derived product performance indicators

reference_input_layer:
- forecast references
- lifecycle context
- issue context where policy allows bounded use

policy_configuration_layer:
- score_version
- weighting profile
- threshold profile
- classification suggestion rules

version_layer:
- score_version must remain explicit
- score interpretation depends on version identity

# ============================================================
# 5. ARCHITECTURAL BOUNDARIES
# ============================================================

architectural_boundaries:
- raw ERP facts remain authoritative outside score ownership
- score outputs are application-owned judgment artifacts
- classification suggestions may use scores but are not identical to scores
- proposals may be informed by scores but are not identical to scores
- review decisions may use scores but must remain human-visible and attributable

# ============================================================
# 6. EXPLAINABILITY REQUIREMENTS
# ============================================================

explainability_requirements:
- score period must be visible
- score version must be visible
- score refresh timing must be visible
- component scores must be visible where policy requires
- score should not appear as unexplained magic output

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
KPI and scoring architecture in ProductPortfolioManager
must support strong comparison and judgment usability
without blurring the boundary between source facts and application-owned evaluation.
EOF

cat <<'EOF' > "$BASE/030.model/0300010_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORE_MODEL_FORMAL_DESIGN.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORE MODEL FORMAL DESIGN
# ============================================================

status: canonical
layer: model
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines KPI and score-related model semantics
used by ProductPortfolioManager.

model_principles:
- KPI source values and score outputs must remain distinct
- period semantics are mandatory
- currency semantics are mandatory for money fields
- version semantics are mandatory for score interpretation
- explanation-support fields are first-class

# ============================================================
# 1. KPI SOURCE MODEL SEMANTICS
# ============================================================

primary_kpi_source_entity:
- product_metric_snapshot

primary_kpi_source_semantics:
- holds judgment-time product metrics
- supports reproducibility of score interpretation
- supports cross-product comparison within the same period context
- may preserve both transaction and reporting currency context

kpi_source_fields_of_special_importance:
- metric_period_type
- metric_period_start
- metric_period_end
- transaction_currency_code
- reporting_currency_code
- sales_amount
- sales_quantity
- gross_profit_amount
- gross_profit_rate
- cost_amount
- inventory_quantity
- inventory_amount
- growth_rate
- source_system_code
- source_generated_at
- fetched_at

# ============================================================
# 2. SCORE MODEL SEMANTICS
# ============================================================

primary_score_entity:
- product_score

score_model_semantics:
- one score row represents one scored interpretation
  of one portfolio item for one period under one score version

score_fields_of_special_importance:
- score_period_type
- score_period_start
- score_period_end
- score_version
- sales_score
- margin_score
- growth_score
- inventory_score
- risk_score
- strategic_score
- total_score
- score_summary_text_key
- calculation_basis_ref
- calculated_at

# ============================================================
# 3. SCORE COMPONENT SEMANTICS
# ============================================================

score_component_semantics:

  sales_score:
    meaning:
      Relative or normalized evaluation of product sales scale or strength.

  margin_score:
    meaning:
      Relative or normalized evaluation of product profitability quality.

  growth_score:
    meaning:
      Relative or normalized evaluation of product growth trend.

  inventory_score:
    meaning:
      Relative or normalized evaluation of inventory health or inventory-related operational strength.

  risk_score:
    meaning:
      Relative or normalized evaluation of product risk posture.

  strategic_score:
    meaning:
      Evaluation of strategy-oriented importance or support weighting.

  total_score:
    meaning:
      Aggregated evaluation output used for comparison support.

# ============================================================
# 4. VERSION SEMANTICS
# ============================================================

version_semantics:
- score_version identifies the scoring rule set used
- score outputs from different score_version values must not be treated as implicitly equivalent
- historical score interpretation may require version-aware reading

# ============================================================
# 5. CLASSIFICATION SUGGESTION RELATION
# ============================================================

classification_suggestion_relation:
- classification suggestion may be derived from product_score
- classification suggestion is not the same entity as product_score
- classification suggestion should remain interpretable from score context and policy context

# ============================================================
# 6. KPI/FORECAST RELATION
# ============================================================

kpi_forecast_relation:
- forecast references may contextualize KPI interpretation
- forecast data remains advisory
- forecast mismatch may influence alerting or risk interpretation
- forecast data should not silently overwrite KPI source semantics

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
The KPI and score model in ProductPortfolioManager
must preserve period clarity,
currency clarity,
version clarity,
and explanation-ready semantics for product judgment.
EOF

cat <<'EOF' > "$BASE/080.policy/0800007_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_POLICY.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level rules for KPI usage,
score interpretation,
and score-driven judgment boundaries.

policy_principles:
- KPI interpretation must remain explicit
- score outputs support judgment; they do not replace judgment
- scoring must remain versioned
- score-based suggestions must not silently become final business decisions
- monetary KPI interpretation must respect currency context

# ============================================================
# 1. KPI INTERPRETATION POLICY
# ============================================================

kpi_interpretation_policy:
- KPI values should be read in period context
- KPI values should be read in currency context when monetary
- KPI values should not be compared carelessly across mismatched periods
- KPI values should not be interpreted as full business truth without source context awareness

# ============================================================
# 2. SCORE INTERPRETATION POLICY
# ============================================================

score_interpretation_policy:
- score values are application-owned evaluation outputs
- score values should be interpreted alongside version and refresh timing
- component scores should remain meaningfully named
- total_score should not hide the existence of tradeoffs among components

# ============================================================
# 3. SCORE-TO-DECISION POLICY
# ============================================================

score_to_decision_policy:
- high total_score does not automatically finalize focus classification
- low total_score does not automatically finalize retire_candidate classification
- score may justify review attention, not silent final action
- score-driven suggestions should remain reviewable and, where required, approvable

# ============================================================
# 4. FORECAST-TO-SCORE POLICY
# ============================================================

forecast_to_score_policy:
- forecast context may inform score interpretation
- forecast references remain advisory
- weak-confidence forecast should not dominate product judgment casually
- forecast confidence should matter in interpretation where used

# ============================================================
# 5. CHANGE CONTROL POLICY
# ============================================================

change_control_policy:
- score_version changes should be intentional
- meaningful score rule changes should be traceable
- historical score interpretation should remain possible after rule evolution
- hidden unannounced scoring shifts are disfavored

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
KPI and scoring policy in ProductPortfolioManager
must preserve explainability,
version awareness,
and explicit separation between evaluation support and final business decision authority.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200009_PRODUCT_PORTFOLIO_MANAGER_KPI_AND_SCORING_REQUIREMENTS.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER KPI AND SCORING REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for KPI and scoring behavior
without entering implementation code.

# ============================================================
# 1. REQUIRED KPI DISPLAY CAPABILITIES
# ============================================================

required_kpi_display_capabilities:
- show product metric summary in product detail
- show comparable KPI columns in portfolio list
- show KPI context in comparison views
- show period context for KPI values
- show currency context for monetary KPI values

# ============================================================
# 2. REQUIRED SCORE DISPLAY CAPABILITIES
# ============================================================

required_score_display_capabilities:
- show component scores
- show total_score
- show score_version
- show calculated_at
- show score rationale summary
- support product-to-product score comparison

# ============================================================
# 3. REQUIRED REFRESH CAPABILITIES
# ============================================================

required_refresh_capabilities:
- manual score refresh
- pre-review refresh support
- refresh result visibility
- clear display of latest calculated time

# ============================================================
# 4. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain score as a judgment-support artifact
- distinguish KPI source values from score outputs
- show component names clearly
- support localization-ready labels for KPI and score presentation

# ============================================================
# 5. REQUIRED INPUT CONTEXT
# ============================================================

required_input_context:
- period_type
- period_start
- period_end
- reporting_currency_code
- score_version
- portfolio_item_id

# ============================================================
# 6. REQUIRED OUTPUT CONTEXT
# ============================================================

required_output_context:
- metric_snapshot_id where applicable
- product_score_id
- component scores
- total_score
- score_version
- calculated_at
- classification suggestion where supported

# ============================================================
# 7. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready KPI and score labels
- multi-currency-safe monetary presentation
- cross-device consistent meaning
- no implication that score equals final approval
- no hidden score recalculation without visible refresh context

# ============================================================
# 8. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement KPI and scoring
as visible, explainable, period-aware, and version-aware judgment support surfaces.
EOF

echo "PATCHED: KPI and scoring formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/030.model" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
