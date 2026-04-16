# ============================================================
# ERP HANDOFF INTEGRATION CONTRACT
# ============================================================

status: canonical
layer: integration
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines governed ERP handoff contract.

rules:
- payload version must be explicit
- source forecast and scenario traceability must remain possible
- receiving ERP response must be recorded explicitly
- acceptance, rejection, and technical failure are separate outcomes
