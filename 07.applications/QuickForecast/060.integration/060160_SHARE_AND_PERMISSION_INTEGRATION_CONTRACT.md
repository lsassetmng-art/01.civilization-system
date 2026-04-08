# ============================================================
# SHARE AND PERMISSION INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro share and permission contract assumptions.

rules:
- target identity must be resolvable
- permission level must be explicit
- unsupported permission escalation must be rejected
- share success and recipient action are separate states
