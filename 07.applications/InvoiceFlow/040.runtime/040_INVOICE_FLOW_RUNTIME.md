# ============================================================
# INVOICE FLOW RUNTIME
# ============================================================

status: canonical
layer: runtime
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

runtime_rules:
- front invoices remain non-ERP-master throughout lifecycle
- ERP-master invoices are treated as ERP authority references
- bank matching does not bypass review when ambiguity exists
- manual confirmation requires actor traceability
- collection priority updates when overdue or outstanding conditions change
- receipt issuance requires confirmed payment state
