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
