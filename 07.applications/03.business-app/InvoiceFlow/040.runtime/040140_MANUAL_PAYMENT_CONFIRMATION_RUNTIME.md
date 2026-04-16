# ============================================================
# MANUAL PAYMENT CONFIRMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- manual confirmation supports hand-delivery and equivalent routes
- actor, date, amount, and evidence note are required
- manual confirmation may issue receipt when policy allows
