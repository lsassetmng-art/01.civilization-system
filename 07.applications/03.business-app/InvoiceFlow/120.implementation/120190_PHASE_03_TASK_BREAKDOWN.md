# ============================================================
# PHASE 03 TASK BREAKDOWN
# Manual Payment Confirmation
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

phase_code: IF-PHASE-03

backend_tasks:
- implement manual payment confirmation API
- compute difference_amount and partial handling
- update invoice status from payment result
- enforce permission checks for manual confirmation
- write audit event for manual confirmation

frontend_tasks:
- implement manual payment confirmation screen
- display outstanding amount and difference clearly
- support evidence attachment reference field
- show receipt readiness after confirmed payment
- show blocking errors clearly

data_tasks:
- create payment_confirmation table
- connect payment_confirmation to invoice_case
- index payment confirmation by invoice and date

test_tasks:
- test full payment manual confirmation
- test partial payment manual confirmation
- test difference handling
- test permission denial for unauthorized actor
- test audit event write

review_tasks:
- review operator flow for hand-delivery and cash scenarios
- review correctness of difference visibility
- review receipt readiness conditions

phase_completion_focus:
- manual payment confirmation is safe and usable
