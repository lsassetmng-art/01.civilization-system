#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/ProductPortfolioManager"

mkdir -p \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/120.implementation"

cat <<'EOF' > "$BASE/070.operations/0700005_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_OPERATIONS.md"
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
EOF

cat <<'EOF' > "$BASE/080.policy/0800014_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_POLICY.md"
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
EOF

cat <<'EOF' > "$BASE/120.implementation/1200020_PRODUCT_PORTFOLIO_MANAGER_FRESHNESS_BY_SURFACE_REQUIREMENTS.md"
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
EOF

echo "PATCHED: freshness-by-surface formal design docs added"
echo "BASE=$BASE"
echo
find "$BASE/070.operations" -maxdepth 1 -type f | sort
echo
find "$BASE/080.policy" -maxdepth 1 -type f | sort
echo
find "$BASE/120.implementation" -maxdepth 1 -type f | sort
