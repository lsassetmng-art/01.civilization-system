# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements for dashboard,
portfolio list,
and comparison surfaces without entering implementation code.

# ============================================================
# 1. DASHBOARD REQUIREMENTS
# ============================================================

dashboard_requirements:
- show KPI summary cards
- show strategic classification counts
- show alert summary
- show review and approval workload summary
- show navigable top-priority product sections
- support period context
- support reporting currency context

required_dashboard_widgets:
- total products
- focus/growth/improve/retire-candidate counts where available
- high or critical alert count
- pending approval count
- top sales products
- top gross-profit products
- top growth products
- review-target summary

# ============================================================
# 2. PORTFOLIO LIST REQUIREMENTS
# ============================================================

portfolio_list_requirements:
- search by product identity context
- filter by classification
- filter by category
- filter by brand
- filter by lifecycle
- filter by alert/proposal/review state
- sort by KPI and score context
- support paging
- support saved view or preset behavior where available
- support multi-select for comparison

required_list_columns_or_equivalent_fields:
- product_code
- product_name
- category
- brand
- lifecycle_stage
- current_classification_code
- sales_amount
- gross_profit_amount
- gross_profit_rate
- growth_rate
- total_score
- alert/proposal flags
- updated_at

# ============================================================
# 3. COMPARISON REQUIREMENTS
# ============================================================

comparison_requirements:
- compare multiple selected products
- show KPI differences
- show score differences
- show lifecycle/classification differences
- show alert context
- show forecast context where available
- support next-step actions into detail/review/proposal/classification flows

comparison_display_requirements:
- product identity must remain clear
- period context must remain visible
- monetary context must remain visible
- score version context should be visible where relevant
- mixed availability of data should remain understandable

# ============================================================
# 4. MOBILE / TABLET / PC REQUIREMENTS
# ============================================================

device_requirements:
phone:
- prioritize essential fields first
- allow expansion for deeper fields
- support reduced-density comparison

tablet:
- support stronger side-by-side layouts
- support quicker navigation between selected targets

pc:
- support denser lists
- support denser comparison matrices
- support faster analyst-style scanning

# ============================================================
# 5. EXPLANATION REQUIREMENTS
# ============================================================

explanation_requirements:
- facts must be distinguishable from scores
- lifecycle must be distinguishable from classification
- alert state must be distinguishable from severity
- approval workload must be distinguishable from proposal volume
- UI labels must be localization-ready

# ============================================================
# 6. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready labels and headings
- multi-currency-safe money display
- no hidden authority shortcuts from dashboard widgets
- no misleading compression of mixed-context data
- consistent meaning across devices

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement dashboard,
portfolio list,
and comparison surfaces
as first-class judgment-entry and triage surfaces
for portfolio operations.
