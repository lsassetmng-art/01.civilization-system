# ============================================================
# RECEIPT POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt requires confirmed payment
- bank-linked or manual confirmation are both acceptable sources
- reissue must keep auditability
