# ============================================================
# PROJECT FLOW SUBSCRIPTION AND READ ONLY POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

subscription_policy:
- ProjectFlow is a monthly-use application
- base monthly price is 900 JPY
- initial trial period is 7 days

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

state_rules:
trial_active:
- full feature access

subscribed_active:
- full feature access

unpaid_read_only:
- view only
- no create
- no edit
- no export generation
- no report generation
- no integration request

suspended:
- access follows business suspension rule

audit_rule:
Entitlement state changes should remain reviewable.
