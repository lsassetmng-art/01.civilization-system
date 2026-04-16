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
