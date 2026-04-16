# ============================================================
# APP DEVELOPMENT STUDIO PLAN DIFFERENCE POLICY
# ============================================================

status: canonical-draft
layer: policy
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines whether functional differences exist
between trial, monthly, and yearly plans.

# ============================================================
# 1. PLAN STRUCTURE
# ============================================================

plans:
- initial_trial
- monthly
- yearly

# ============================================================
# 2. DIFFERENCE PRINCIPLE
# ============================================================

difference_principle:
The main difference is billing state and billing cycle,
not a complex feature split.

meaning:
- initial_trial is time-limited
- monthly is standard paid monthly continuation
- yearly is discounted paid yearly continuation
- monthly and yearly should be treated as the same paid feature tier

# ============================================================
# 3. TRIAL POSITION
# ============================================================

trial_position:
The trial exists to allow meaningful evaluation
before subscription continuation.

trial_characteristics:
- time-limited
- initial-only
- evaluation-oriented
- not a permanent free tier

# ============================================================
# 4. PAID PLAN POSITION
# ============================================================

paid_plan_position:
Monthly and yearly plans are the same paid service tier.

same_paid_tier_meaning:
- no feature split between monthly and yearly
- no governance split between monthly and yearly
- no execution-control split between monthly and yearly
- yearly exists as a discounted billing choice only

# ============================================================
# 5. GOVERNANCE INVARIANCE
# ============================================================

governance_invariance:
Governance requirements do not change by plan.

invariant_items:
- review requirement
- approval requirement
- SQL safety handling
- Git protection handling
- escalation behavior
- audit meaning

# ============================================================
# 6. DESIGN DECISION
# ============================================================

design_decision:
At the current design stage,
App Development Studio uses a single paid feature tier
with two billing cycles:
- monthly
- yearly

trial is separate only as an initial temporary evaluation period.

# ============================================================
# 7. USER-FACING EXPLANATION
# ============================================================

user_facing_explanation:
- 初回10日間無料
- その後は月額1,980円または年額16,800円
- 月額版と年額版の機能差はなく、支払い周期のみが異なる

# ============================================================
# 8. CONCLUSION
# ============================================================

conclusion:
App Development Studio should keep pricing simple:
one paid tier,
two billing cycles,
and one initial time-limited trial.
