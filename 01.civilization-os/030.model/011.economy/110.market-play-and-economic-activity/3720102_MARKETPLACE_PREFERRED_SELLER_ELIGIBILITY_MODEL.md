# ============================================================
# MARKETPLACE PREFERRED SELLER ELIGIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: digital-marketplace
component: marketplace-preferred-seller-eligibility

owner: Boss
prepared_by: Zero


# ELIGIBILITY CONDITIONS

preferred_seller_conditions:
- seller_verification_complete
- no_major_policy_violation_in_last_90_days
- refund_rate_in_last_90_days_below_5_percent


# CONDITION DETAIL

seller_verification_complete:
- personal_seller_verification_completed
or
- company_seller_verification_completed

no_major_policy_violation_in_last_90_days:
- true_only_if_no_major_violation_record_exists_in_rolling_90_day_window

refund_rate_in_last_90_days_below_5_percent:
- true_only_if_refund_rate < 0.05_in_rolling_90_day_window


# DECISION RULE

preferred_fee_applies_only_if:
- all_conditions_true


# FINAL RULE

Preferred seller fee
must require all three conditions.
