# ============================================================
# RECEIPT ISSUANCE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

rules:
- receipt issuance requires confirmed payment
- confirmed payment may originate from bank-linked confirmation or manual confirmation
- receipt issuance is tracked as its own object
- receipt PDF issuance is application-supported
- receipt authority follows invoice/payment policy scope
