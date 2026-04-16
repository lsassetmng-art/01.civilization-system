# ============================================================
# PROJECT FLOW SUBSCRIPTION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for subscription,
trial,
and unpaid read-only mode.

entitlement_states:
- trial_active
- subscribed_active
- unpaid_read_only
- suspended

runtime_principles:
- entitlement must be evaluated before protected actions
- read-only mode must preserve visibility but block mutation
- smartphone and pc must follow the same entitlement behavior
- trial expiration must transition deterministically
- silent capability disappearance is forbidden

state_behavior:

trial_active:
- full feature access
- create allowed
- edit allowed
- archive allowed
- spreadsheet generation allowed
- report draft generation allowed
- ERP integration request allowed

subscribed_active:
- full feature access
- create allowed
- edit allowed
- archive allowed
- spreadsheet generation allowed
- report draft generation allowed
- ERP integration request allowed

unpaid_read_only:
- dashboard view allowed
- project/task/issue/risk/detail view allowed
- export history view allowed
- report history view allowed
- sync history view allowed
- create blocked
- edit blocked
- archive blocked
- spreadsheet generation blocked
- report draft generation blocked
- report draft update blocked
- ERP import request blocked
- ERP export request blocked
- sync retry blocked

suspended:
- behavior follows business suspension rule
- implementation must keep auditability

transition_rules:
- trial_active -> subscribed_active when payment becomes valid
- trial_active -> unpaid_read_only when trial expires without valid payment
- subscribed_active -> unpaid_read_only when subscription becomes inactive
- unpaid_read_only -> subscribed_active when payment becomes valid again

ui_runtime_rules:
- blocked actions must remain visible
- blocked actions must show entitlement reason
- read-only state must be shown in screen chrome or banner
