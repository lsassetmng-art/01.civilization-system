# ============================================================
# PRODUCT PORTFOLIO MANAGER CLASSIFICATION CHANGE AND PROPOSAL DETAIL FORMAL FLOW
# ============================================================

status: canonical
layer: flow
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Formally defines operator flow across
classification-change and proposal-detail surfaces.

flow_principles:
- classification change must preserve current-vs-proposed clarity
- proposal detail must preserve draft/review/approval/outcome clarity
- both flows must support explicit next actions
- both flows must preserve history visibility

# ============================================================
# 1. CLASSIFICATION-CHANGE FLOW
# ============================================================

classification_change_flow:
1. open classification-change surface from product detail, score detail, comparison, review, or alert context
2. inspect current approved classification
3. inspect supporting score/KPI/lifecycle/alert/proposal context
4. choose proposed classification
5. enter reason
6. save as draft or submit
7. if approval required, create approval handoff
8. if approval not required by policy, finalize through allowed route
9. preserve resulting history

inputs:
- portfolio_item_id
- current approved classification context
- proposed_classification_code
- proposed_reason
- based_score_id where relevant

outputs:
- product_classification_draft
- optional approval request
- finalized product_classification where permitted

# ============================================================
# 2. PROPOSAL-DETAIL FLOW
# ============================================================

proposal_detail_flow:
1. open proposal-detail surface from list, product detail, alert, review, or history context
2. inspect proposal type, title, and current status
3. inspect linked product and judgment context
4. inspect expected effect, risk, owner, due date
5. if state permits, edit proposal
6. submit / move to review / connect to approval flow where required
7. inspect approval and history context
8. move to in_progress or completed where lifecycle meaning permits

inputs:
- proposal_id
- related product context
- proposal status context
- approval context where available

outputs:
- updated proposal state
- optional approval request linkage
- clearer next-action path

# ============================================================
# 3. CONTEXT PRESERVATION RULES
# ============================================================

context_preservation_rules:
- classification-change flow should preserve product identity and score context where practical
- proposal-detail flow should preserve proposal identity and related product context where practical
- return navigation should preserve originating context where practical
- history transitions should remain interpretable after edits or submission

# ============================================================
# 4. EXCEPTION FLOW
# ============================================================

exception_flow_examples:
- classification draft exists but approved classification changed meanwhile
- proposal became rejected while user was viewing it
- approval requirement discovered late
- stale supporting score context
- mixed-currency context affects proposal interpretation

exception_rules:
- stale or conflicting state should remain visible when important
- conflicting judgment state should not be silently overwritten
- missing support context should not be disguised as positive confirmation

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Classification-change and proposal-detail flow
in ProductPortfolioManager
must preserve explicit governed transitions,
support-context visibility,
and stable interpretation of current, draft, and approved states.
