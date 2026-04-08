# ============================================================
# FRONT INVOICE RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- front invoice can be drafted, finalized for PDF, sent, tracked, paid, and closed
- front invoice cannot transition into ERP invoice master
- front invoice can still support receipt issuance and collection management
