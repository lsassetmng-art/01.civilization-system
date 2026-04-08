# ============================================================
# ERP REFERENCE INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines Pro-only ERP reference integration.

reference_examples:
- sales actual
- inventory
- backlog
- historical demand
- item / target master context

rules:
- ERP reference is Pro-only
- reference access must respect enterprise identity and permission
- referenced data must remain distinguishable from locally edited draft data
- ERP reference failure must not destroy local draft continuity
