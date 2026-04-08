# ============================================================
# INVOICE FLOW CONSTITUTION
# ============================================================

status: canonical
layer: constitution
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the constitutional role of InvoiceFlow.

constitutional_principles:
- InvoiceFlow is a front application, not the ERP itself.
- ERP is the invoice master authority when ERP is used.
- A front-created invoice shall not be treated as ERP invoice master.
- Front-created invoices may still be operationally valid outside ERP-master scope.
- Payment confirmation may originate from bank-linked confirmation or manual confirmation.
- Receipt issuance is allowed from confirmed payment records.
- Collection management is first-class functionality inside InvoiceFlow.
- ERP reflection must respect shared BusinessOS boundary capability.
- Fail closed is mandatory when authority, amount, or target invoice identity is unclear.
