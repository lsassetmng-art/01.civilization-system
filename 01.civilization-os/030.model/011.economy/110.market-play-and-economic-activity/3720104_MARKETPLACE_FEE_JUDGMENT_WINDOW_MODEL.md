# ============================================================
# MARKETPLACE FEE JUDGMENT WINDOW MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-fee-judgment-window

owner: Boss
prepared_by: Zero


# JUDGMENT WINDOW

judgment_window_type:
- rolling_90_day_window


# EVALUATED SIGNALS

evaluated_signals:
- seller_verification_state
- major_policy_violation_presence
- refund_rate


# FINAL RULE

Marketplace preferred fee eligibility
must always use the latest rolling 90-day window.
