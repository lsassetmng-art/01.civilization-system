#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/020.architecture" \
  "$BASE/050.flow" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/020.architecture/0200012_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_ARCHITECTURE.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture of dashboard, portfolio list,
and comparison surfaces in ProductPortfolioManager.

architecture_principles:
- these surfaces are judgment surfaces, not mere browsing surfaces
- dashboard must accelerate recognition of priorities
- list must support search, filter, sort, and triage
- comparison must support explainable multi-target judgment
- density may differ by device, but meaning must remain equivalent
- facts, scores, classifications, proposals, alerts, and forecast context must remain distinguishable

# ============================================================
# 1. DASHBOARD ARCHITECTURAL ROLE
# ============================================================

dashboard_role:
- provide overall portfolio health visibility
- surface urgent and important products
- surface action-oriented counts
- link rapidly into list, detail, review, approval, and alert workflows

dashboard_is_not:
- not a full-detail replacement for list or product detail
- not a hidden decision engine
- not a single-screen substitute for review governance

dashboard_core_sections:
- KPI summary section
- strategic segmentation section
- top-ranked products section
- alert summary section
- review/approval workload section
- quick navigation actions

# ============================================================
# 2. PORTFOLIO LIST ARCHITECTURAL ROLE
# ============================================================

portfolio_list_role:
- provide cross-product visibility
- support operational narrowing through search and filters
- support ranking and prioritization
- support multi-select and comparison initiation
- serve as the main triage surface

portfolio_list_core_dimensions:
- identity dimension
- category/brand/lifecycle dimension
- strategy/classification dimension
- KPI dimension
- score dimension
- alert/proposal/review state dimension

# ============================================================
# 3. COMPARISON SURFACE ARCHITECTURAL ROLE
# ============================================================

comparison_role:
- support product-to-product comparison
- support proposal-to-proposal comparison where needed
- support classification reasoning comparison
- support review-oriented discussion

comparison_is_not:
- not merely duplicated list rows
- not a static report
- not a substitute for decision history

comparison_core_dimensions:
- KPI comparison
- score comparison
- lifecycle comparison
- classification comparison
- proposal comparison
- alert/forecast context comparison

# ============================================================
# 4. CROSS-SURFACE RELATION
# ============================================================

cross_surface_relation:
dashboard:
- entry and prioritization surface

portfolio_list:
- exploration and triage surface

comparison:
- deeper judgment surface for multiple targets

architectural_rule:
These surfaces form a continuous judgment path:
dashboard -> list -> detail/comparison -> review/proposal/classification/approval

# ============================================================
# 5. DEVICE ARCHITECTURE
# ============================================================

device_architecture:
phone:
- compressed KPI cards
- prioritized columns and expandable details
- comparison with reduced simultaneous density

tablet:
- stronger split-view and side-by-side context
- review-friendly dense comparison

pc:
- highest density list and comparison support
- larger simultaneous context window

cross_device_rule:
No device class may remove the meaning of key states or change authority boundaries.

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Dashboard, list, and comparison architecture in ProductPortfolioManager
must support fast recognition,
structured triage,
and explainable multi-target judgment.
EOF

cat <<'EOF' > "$BASE/050.flow/0500010_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_FORMAL_FLOW.md"
# ============================================================
# PRODUCT PORTFOLIO MANAGER DASHBOARD LIST COMPARISON FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across dashboard,
portfolio list,
and comparison surfaces.

flow_principles:
- dashboard should shorten time to useful action
- list should support progressive narrowing
- comparison should support explicit decision preparation
- surface transitions should preserve context where practical

# ============================================================
# 1. DASHBOARD FLOW
# ============================================================

dashboard_flow:
1. open dashboard
2. inspect KPI summaries
3. inspect high-priority segments
4. inspect alert and approval workload
5. choose next action:
   - open filtered portfolio list
   - open product detail
   - open alert list
   - open approval queue
   - open review-related context

inputs:
- dashboard period context
- reporting currency context
- user visibility context

outputs:
- narrowed navigation path
- explicit operator focus area

# ============================================================
# 2. PORTFOLIO LIST FLOW
# ============================================================

portfolio_list_flow:
1. open list
2. apply search
3. apply filters
4. apply sorting
5. inspect target rows
6. choose next action:
   - open product detail
   - multi-select targets
   - open comparison
   - open classification draft flow
   - open proposal flow
   - add target to review context where allowed

inputs:
- search text
- filters
- sort field and direction
- paging context
- locale/currency/device context

outputs:
- narrowed target set
- selected products
- product detail navigation
- comparison candidate set

# ============================================================
# 3. COMPARISON FLOW
# ============================================================

comparison_flow:
1. enter comparison with selected targets
2. inspect KPI differences
3. inspect score differences
4. inspect lifecycle/classification differences
5. inspect alert and forecast context
6. prepare next action:
   - open product detail
   - create proposal
   - create classification draft
   - bring targets into review session

inputs:
- selected portfolio_item_ids
- period context
- display context

outputs:
- better-informed next action
- explicit multi-target judgment basis

# ============================================================
# 4. CONTEXT-PRESERVING FLOW RULES
# ============================================================

context_preserving_rules:
- returning from detail to list should preserve list filters where practical
- moving from list to comparison should preserve selected targets
- moving from dashboard to list should preserve initiating filter intent where practical
- moving from comparison to review should preserve selected targets where policy and UX allow

# ============================================================
# 5. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- comparison target becomes unavailable
- list filter returns zero results
- dashboard summaries are stale while detail is fresher
- mixed-currency comparison requires explicit context visibility

exception_rules:
- empty results should remain understandable
- stale context should not be hidden where operationally relevant
- mixed-currency context should remain visible and not silently normalized without explanation

# ============================================================
# 6. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Dashboard, list, and comparison flow in ProductPortfolioManager
must support fast triage,
progressive narrowing,
multi-target reasoning,
and context-preserving navigation.
EOF

cat <<'EOF' > "$BASE/120.implementation/1200015_PRODUCT_PORTFOLIO_MANAGER_DASHBOARD_LIST_COMPARISON_REQUIREMENTS.md"
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
EOF

echo "PATCHED: dashboard/list/comparison formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/020.architecture" -maxdepth 1 -type f | sort
echo
find "$BASE/050.flow" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
