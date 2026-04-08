# ============================================================
# EXPENSE SECRETARY INTEGRATION
# ============================================================

status: canonical
layer: integration
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

secretary_role:
PocketSecretary may provide:
- expense candidate reminders
- travel / visit context
- receipt capture entry point
- unsubmitted expense prompts

restriction:
PocketSecretary does not finalize expense submission authority for this app.
