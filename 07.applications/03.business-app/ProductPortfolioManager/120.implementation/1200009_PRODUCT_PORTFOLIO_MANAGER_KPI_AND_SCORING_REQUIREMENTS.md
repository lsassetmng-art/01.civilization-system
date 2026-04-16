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
