# ============================================================
# MARKETPLACE PREFERRED SELLER REVERSION MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-preferred-seller-reversion

owner: Boss
prepared_by: Zero


# REVERSION TRIGGERS

reversion_triggers:
- seller_verification_becomes_invalid
- major_policy_violation_occurs
- refund_rate_in_last_90_days_becomes_5_percent_or_higher


# REVERSION RESULT

reversion_result:
- platform_fee_rate_returns_to_0_30


# FINAL RULE

Preferred fee
must revert to default immediately
when any trigger condition occurs.
