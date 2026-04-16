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
