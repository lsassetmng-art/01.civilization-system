# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE REQUIREMENTS
# ============================================================

status: canonical
layer: implementation
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-level requirements
for freshness handling by surface
without entering implementation code.

# ============================================================
# 1. REQUIRED FRESHNESS FIELDS
# ============================================================

required_freshness_fields:
- source_generated_at where available
- fetched_at
- calculated_at for score surfaces
- forecast_generated_at where available
- score_version where score interpretation depends on it

# ============================================================
# 2. REQUIRED SURFACE BEHAVIOR
# ============================================================

required_surface_behavior:

  dashboard:
    - show freshness context when materially relevant
    - tolerate summary-oriented snapshot use

  portfolio_list:
    - show usable triage context
    - allow navigation into fresher deep surfaces

  product_detail:
    - show fact/source freshness context
    - show score freshness context

  score_detail:
    - show calculated_at
    - show score_version
    - preserve stale interpretation clarity

  comparison_surface:
    - show enough freshness context to avoid misleading comparison

  review_session_detail:
    - support fresher context expectations than dashboard/list
    - highlight materially stale targets where appropriate

  approval_queue:
    - preserve visibility of freshness on decision-relevant context
    - avoid misleading stale-as-fresh interpretation

  audit_history_list:
    - prioritize chronology over live freshness
    - avoid pretending historical states are current states

# ============================================================
# 3. REQUIRED EXPLANATION CAPABILITIES
# ============================================================

required_explanation_capabilities:
- explain that dashboard/list may be more triage-oriented
- explain freshness context on detail/review/approval surfaces where needed
- distinguish stale from missing
- distinguish stale forecast from absent forecast
- labels and freshness explanations must be localization-ready

# ============================================================
# 4. CROSS-CUTTING REQUIREMENTS
# ============================================================

cross_cutting_requirements:
- multilingual-ready freshness labels
- cross-device consistent meaning
- no hidden refresh assumptions
- no silent use of stale context as if freshly confirmed
- no implication that history surfaces represent current live state

# ============================================================
# 5. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
ProductPortfolioManager must implement freshness-by-surface behavior
so that operators can judge recency appropriately
based on the purpose of each surface.
