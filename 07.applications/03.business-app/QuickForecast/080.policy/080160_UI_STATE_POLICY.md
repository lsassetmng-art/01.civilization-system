# ============================================================
# UI STATE POLICY
# ============================================================

status: canonical
layer: policy
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines policy for user-visible state handling.

rules:
- draft, sync, approval, and submission states must remain separate
- state must not be hidden in deep screens only
- failure must be visible in list and detail contexts
- state display must not depend on color alone
