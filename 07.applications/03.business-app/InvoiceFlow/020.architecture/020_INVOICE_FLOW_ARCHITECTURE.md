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

# ============================================================
# 1. ARCHITECTURAL POSITION
# ============================================================

architectural_position:
- InvoiceFlow is a field/front operational application.
- ERP remains the invoice master authority when ERP is used.
- InvoiceFlow covers invoice PDF issuance, send request,
  payment confirmation, collection management,
  receipt issuance, and ERP reflection support.
- InvoiceFlow integrates collection management inside the same app.
- InvoiceFlow supports multilingual, multicurrency,
  iphone, android, pc, and tablet operation.

# ============================================================
# 2. CORE MODULES
# ============================================================

main_components:
- invoice front module
- invoice PDF generation module
- invoice delivery request module
- ERP-master invoice reference module
- bank-linked payment confirmation module
- manual payment confirmation module
- simple reconciliation module
- collection management module
- receipt issuance module
- shared ERP reflection adapter
- audit and notification module
- localization and currency handling module
- responsive multi-device interface layer

# ============================================================
# 3. INVOICE CATEGORY BOUNDARY
# ============================================================

invoice_categories:
- FRONT_LOCAL
- ERP_MASTER

invoice_category_meaning:
FRONT_LOCAL:
  - created inside InvoiceFlow
  - valid for local/front operation
  - invoice PDF can be generated
  - send request can be managed
  - payment can be confirmed
  - receipt can be issued
  - collection can be managed
  - cannot become ERP invoice master

ERP_MASTER:
  - created and mastered by ERP
  - referenced by InvoiceFlow
  - payment can be confirmed in InvoiceFlow
  - collection can be managed in InvoiceFlow
  - payment result can be reflected through shared ERP capability

# ============================================================
# 4. RESPONSIBILITY SPLIT
# ============================================================

invoiceflow_responsibility:
- create front/local invoice
- generate invoice PDF
- manage invoice sending request
- display invoice detail and invoice status
- import and review bank transaction candidates
- allow manual payment confirmation
- perform simple reconciliation
- issue receipt PDF
- manage overdue and collection actions
- show collection priority
- submit payment-result reflection through shared ERP boundary
- keep audit trail

shared_businessos_responsibility:
- company context attachment
- shared reflection routing
- reflection validation
- notification bridge
- audit/event support
- cross-app policy support

erp_responsibility:
- official invoice master
- official order-to-shipment-to-invoice chain
- formal accounting impact
- formal accounts receivable truth
- final ERP-side reconciliation/settlement logic

# ============================================================
# 5. MODULE RELATION
# ============================================================

module_relation:
- invoice front module creates or displays invoice cases
- payment confirmation module updates payment-related facts
- simple reconciliation module links invoice and payment facts
- collection management module acts on unpaid/overdue cases
- receipt issuance module depends on confirmed payment
- shared ERP reflection adapter only handles allowed reflection paths
- interface layer sits above all user-facing modules
- audit/notification layer observes all critical changes

# ============================================================
# 6. ARCHITECTURAL RULES
# ============================================================

core_design_rules:
- front-created invoices and ERP-master invoices are distinct categories
- payment confirmation supports bank-linked and manual routes
- collection management is part of the same application scope
- receipts are derived from confirmed payment records
- ERP reflection is bounded by invoice authority and shared capability rules
- multilingual support is built in as a first-class architectural concern
- multicurrency handling is built in as a first-class architectural concern
- iphone, android, pc, and tablet support are built in as a first-class interface concern
- fail closed is mandatory when invoice authority, amount identity,
  or reflection eligibility is unclear
