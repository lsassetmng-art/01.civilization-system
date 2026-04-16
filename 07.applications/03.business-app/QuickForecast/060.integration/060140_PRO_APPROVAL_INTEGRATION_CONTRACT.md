# ============================================================
# PRO APPROVAL INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-tier approval integration.

rules:
- approval target must be explicit
- approval state must be explicit
- requester and approver identity must be resolvable
- approval result must be storable in history
- approval grant and submission acceptance are separate states
