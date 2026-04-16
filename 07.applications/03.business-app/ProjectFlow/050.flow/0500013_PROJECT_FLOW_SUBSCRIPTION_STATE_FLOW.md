# ============================================================
# PROJECT FLOW SUBSCRIPTION STATE FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines subscription and entitlement state transitions.

main_flow:
1. user opens app
2. system resolves entitlement state
3. allowed actions are enabled
4. blocked actions remain visible but guarded
5. user continues in trial, subscribed, or read-only state

trial_expiry_flow:
1. trial period reaches end
2. system re-evaluates payment validity
3. if no valid payment exists, entitlement changes to unpaid_read_only
4. write and generation actions become blocked
5. viewing remains available

subscription_reactivation_flow:
1. payment becomes valid
2. system re-evaluates entitlement
3. entitlement changes to subscribed_active
4. previously blocked actions become available again

blocked_action_flow:
1. user taps blocked action in unpaid_read_only
2. system prevents execution
3. system shows read-only reason and subscription guidance
4. user returns without data mutation
