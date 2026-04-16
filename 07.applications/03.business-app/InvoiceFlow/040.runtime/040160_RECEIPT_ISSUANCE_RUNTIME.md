# ============================================================
# RECEIPT ISSUANCE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt issuance requires confirmed payment state
- reissue must keep linkage to original payment confirmation
- receipt issuance must be audited
