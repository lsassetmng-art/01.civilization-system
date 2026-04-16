# ============================================================
# EXPENSE ERP INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

integration_rules:
- no direct ERP DB write
- exact contract only
- idempotency key mandatory
- ERP response persisted verbatim enough for audit
- ERP truth overrides local accounting assumption
