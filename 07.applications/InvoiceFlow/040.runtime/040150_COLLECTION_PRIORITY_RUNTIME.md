# ============================================================
# COLLECTION PRIORITY RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

priority_inputs:
- overdue_days
- outstanding_amount
- customer_total_outstanding
- broken_promise_count
- last_response_gap

priority_levels:
- CRITICAL
- HIGH
- MEDIUM
- LOW
