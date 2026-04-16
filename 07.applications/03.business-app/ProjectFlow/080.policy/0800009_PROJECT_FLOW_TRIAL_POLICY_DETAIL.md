# ============================================================
# PROJECT FLOW TRIAL POLICY DETAIL
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

trial_policy_detail:
- initial trial period is 7 days
- trial grants full feature access
- trial must follow the same feature set on smartphone and pc
- trial expiry must not delete user data
- trial expiry transitions to unpaid_read_only when no valid subscription exists

policy_rules:
- trial state must be auditable
- trial expiration timing must be deterministic
- trial user data remains visible after entitlement downgrade
