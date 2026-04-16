# ============================================================
# PRODUCT PORTFOLIO MANAGER FRESHNESS BY SURFACE OPERATIONS
# ============================================================

status: canonical
layer: operations
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Defines operational freshness expectations
by surface and usage context inside ProductPortfolioManager.

operations_principles:
- freshness expectations differ by surface purpose
- triage surfaces may tolerate slightly older context than final decision surfaces
- review and approval surfaces require stronger freshness discipline
- stale data must be understandable where operationally relevant
- freshness handling must not fabricate certainty

# ============================================================
# 1. SURFACE FRESHNESS TIERS
# ============================================================

freshness_tiers:
- tier_a_decision_critical
- tier_b_review_critical
- tier_c_triage_operational
- tier_d_history_reference

tier_meanings:
  tier_a_decision_critical:
    Used where immediate decision legitimacy depends on recent source context.
  tier_b_review_critical:
    Used where review quality strongly benefits from recent source context.
  tier_c_triage_operational:
    Used where prioritization and navigation can tolerate moderate staleness.
  tier_d_history_reference:
    Used where chronology and explanation matter more than recency.

# ============================================================
# 2. SURFACE CLASSIFICATION
# ============================================================

surface_classification:

  approval_queue:
    freshness_tier: tier_a_decision_critical

  classification_change_surface:
    freshness_tier: tier_a_decision_critical

  proposal_detail_when_submitting_or_approving:
    freshness_tier: tier_a_decision_critical

  review_session_detail:
    freshness_tier: tier_b_review_critical

  product_detail:
    freshness_tier: tier_b_review_critical

  score_detail:
    freshness_tier: tier_b_review_critical

  alert_list:
    freshness_tier: tier_c_triage_operational

  dashboard:
    freshness_tier: tier_c_triage_operational

  portfolio_list:
    freshness_tier: tier_c_triage_operational

  comparison_surface:
    freshness_tier: tier_b_review_critical

  audit_history_list:
    freshness_tier: tier_d_history_reference

  archived_review_history:
    freshness_tier: tier_d_history_reference

# ============================================================
# 3. OPERATIONAL EXPECTATIONS BY TIER
# ============================================================

tier_operational_expectations:

  tier_a_decision_critical:
    expectations:
      - recent ERP reference context strongly preferred
      - recent score context strongly preferred
      - stale warning should be visible when freshness falls outside expected range
      - operator should be able to trigger refresh or see refresh requirement where policy allows

  tier_b_review_critical:
    expectations:
      - reasonably fresh ERP and score context preferred
      - forecast freshness should be visible where forecast materially affects judgment
      - review may proceed with stale context only when operators can recognize it

  tier_c_triage_operational:
    expectations:
      - moderate staleness may be acceptable
      - stale indicators should appear when operationally meaningful
      - list/dashboard may summarize from slightly older snapshots while deeper surfaces refresh more aggressively

  tier_d_history_reference:
    expectations:
      - chronology and attribution matter more than recency
      - stale/fresh framing is secondary to historical explainability
      - historical context must not be misrepresented as current live truth

# ============================================================
# 4. ERP / FORECAST FRESHNESS OPERATIONS
# ============================================================

erp_freshness_operations:
- use source_generated_at where available
- use fetched_at for operator-visible recency context
- distinguish stale ERP reference from missing ERP reference

forecast_freshness_operations:
- use forecast_generated_at where available
- use fetched_at for retrieval recency
- distinguish stale forecast from no forecast
- treat stale forecast more carefully in decision-heavy contexts

# ============================================================
# 5. PRE-REVIEW / PRE-APPROVAL GUIDANCE
# ============================================================

pre_review_guidance:
- review sessions should prefer refreshed score context before active discussion
- decision-heavy comparisons should prefer refreshed KPI/score context

pre_approval_guidance:
- approval surfaces should avoid silently relying on materially stale judgment context
- stale critical context should remain visible to approvers

# ============================================================
# 6. OPERATIONAL METRICS
# ============================================================

operational_metrics:
- stale approval queue item count
- stale review target count
- average age of dashboard KPI summaries
- average age of list snapshots
- average age of forecast references in active review
- forced refresh count before decision

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Freshness in ProductPortfolioManager
must be managed by surface purpose,
with the strongest expectations on decision and review surfaces
and clearer tolerance on triage and historical surfaces.
