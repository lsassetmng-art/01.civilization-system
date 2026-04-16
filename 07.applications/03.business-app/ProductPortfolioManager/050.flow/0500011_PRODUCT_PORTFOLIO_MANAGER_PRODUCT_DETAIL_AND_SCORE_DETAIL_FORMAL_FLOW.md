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
