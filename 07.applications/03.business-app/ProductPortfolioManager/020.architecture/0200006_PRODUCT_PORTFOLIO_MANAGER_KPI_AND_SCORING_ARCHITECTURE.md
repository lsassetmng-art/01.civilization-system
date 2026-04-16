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
