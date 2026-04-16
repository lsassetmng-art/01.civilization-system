# ============================================================
# INVOICE FLOW OVERVIEW
# ============================================================

status: canonical
layer: overview
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Provides the top-level overview for InvoiceFlow.

summary:
InvoiceFlow is a billing, payment confirmation,
collection management, receipt issuance,
and ERP-connected front application.

# ============================================================
# 0. GLOBAL PRODUCT REQUIREMENTS
# ============================================================

global_product_requirements:
- multilingual support is mandatory
- multicurrency support is mandatory
- iphone support is mandatory
- android support is mandatory
- pc support is mandatory
- tablet support is mandatory

global_product_interpretation:
- all user-facing screens must be designed for multilingual expansion
- all monetary models must preserve currency identity
- invoice PDF and receipt PDF must be designed with multilingual and multicurrency considerations
- UI and operations must work across smartphone, tablet, and PC form factors
- no design may assume Android-only or mobile-only operation

primary_position:
InvoiceFlow is not the ERP itself.
Invoice master authority belongs to ERP when ERP is used.
InvoiceFlow provides a field-usable and business-usable front
for invoice PDF issuance,
delivery request,
payment confirmation,
collection tracking,
priority collection support,
and ERP reflection.

invoice_truth_model:
- ERP is the source of truth for ERP-master invoices.
- InvoiceFlow local/front invoices are valid only as non-ERP-master invoices.
- A front-created invoice cannot be promoted into ERP invoice master.
- If ERP-master invoice is required, ERP must create it through its own business flow.

payment_confirmation_model:
- bank-linked confirmation is supported
- manual confirmation is supported
- both can produce receipt issuance records
- simple reconciliation is supported before formal ERP-side reconciliation

collection_model:
- overdue invoices are managed inside InvoiceFlow
- collection due date is managed
- dunning history is managed
- priority collection flag is managed
- collection priority is visualized
- customer outstanding balance is visible

structure:
010.constitution
020.architecture
030.model
040.runtime
050.flow
060.integration
070.operations
080.policy
090.interface
100.security
110.infrastructure
120.implementation
130.development
900.meta
