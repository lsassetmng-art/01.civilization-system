# ============================================================
# QUICK FORECAST PRICING POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines pricing policy for QuickForecast.

pricing_principle:
QuickForecast should not charge primarily for forecasting itself.
It should charge for business operation value
such as synchronization, sharing, review, approval,
history visibility, and ERP-connected handoff.

core_pricing_boundary:
free_scope:
single-user, local-first, draft-centered usage

paid_scope:
shared, governed, synchronized, enterprise-connected usage

policy_statement:
QuickForecast Basic must remain meaningfully useful by itself.
QuickForecast Pro must represent operational business value,
not merely feature hiding.

important_boundary:
QuickForecast does not replace ERP.
Pricing must preserve ERP coexistence and non-replacement framing.
