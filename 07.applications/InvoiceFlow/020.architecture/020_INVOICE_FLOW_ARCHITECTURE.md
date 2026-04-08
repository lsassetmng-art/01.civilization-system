# ============================================================
# INVOICE FLOW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the main architecture of InvoiceFlow.

main_components:
- invoice front module
- payment confirmation module
- collection management module
- receipt issuance module
- shared ERP reflection adapter
- audit and notification module

core_design:
- front-created invoices and ERP-master invoices are distinct categories
- payment confirmation supports bank-linked and manual routes
- collection management is part of the same application scope
- receipts are derived from confirmed payment records
- ERP reflection is bounded by invoice authority and shared capability rules
