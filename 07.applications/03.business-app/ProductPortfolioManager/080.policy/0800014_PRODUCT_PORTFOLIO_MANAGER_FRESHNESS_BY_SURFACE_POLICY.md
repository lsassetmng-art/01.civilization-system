# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE POLICY
# ============================================================

status: canonical
layer: policy
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines policy-level interpretation rules
for recency and staleness across different surfaces.

policy_principles:
- freshness requirements are context-sensitive
- operators must not be misled by stale context
- stale does not always mean unusable
- stale does mean interpretive caution where decision impact is high
- history/reference surfaces should not be judged by the same recency standard as decision surfaces

# ============================================================
# 1. POLICY BY SURFACE INTENT
# ============================================================

surface_intent_policy:
- dashboard and list are triage-oriented
- detail and comparison are judgment-oriented
- review and approval are decision-oriented
- audit/history are explanation-oriented

policy_rule:
The stronger the decision impact,
the stronger the freshness expectation.

# ============================================================
# 2. ERP FRESHNESS POLICY
# ============================================================

erp_freshness_policy:
- ERP-derived facts should show freshness context when material to judgment
- stale ERP reference should not be displayed as if freshly confirmed
- missing ERP reference should not be interpreted as zero or no-risk state

# ============================================================
# 3. SCORE FRESHNESS POLICY
# ============================================================

score_freshness_policy:
- score should be interpreted with calculated_at and score_version context
- old score context should not silently appear equivalent to freshly refreshed score context
- stale score may remain visible for history or triage use if clearly interpretable

# ============================================================
# 4. FORECAST FRESHNESS POLICY
# ============================================================

forecast_freshness_policy:
- forecast should be interpreted with forecast_generated_at and fetched_at context where available
- stale forecast should not be mistaken for fresh forecast
- stale forecast plus low confidence should be treated especially cautiously in decision-heavy flows

# ============================================================
# 5. STALE-VISIBILITY POLICY
# ============================================================

stale_visibility_policy:
- staleness should be surfaced where it matters
- staleness messaging should not exaggerate certainty or panic
- stale context should be understandable to operators across supported locales

# ============================================================
# 6. HISTORY POLICY
# ============================================================

history_policy:
- historical surfaces preserve what was seen or decided at that time
- historical data should not be judged solely by present freshness standards
- chronology should remain primary in history surfaces

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Freshness-by-surface policy in ProductPortfolioManager
must preserve context-aware interpretation,
clear stale visibility,
and stronger recency discipline where decision impact is highest.
