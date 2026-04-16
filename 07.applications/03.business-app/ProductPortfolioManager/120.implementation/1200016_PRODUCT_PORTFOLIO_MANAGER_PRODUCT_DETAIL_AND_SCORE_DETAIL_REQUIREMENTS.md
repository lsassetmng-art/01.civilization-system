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
