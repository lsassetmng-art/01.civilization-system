# ============================================================
# PAYMENT CONFIRMATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

confirmation_routes:
- BANK_LINKED
- MANUAL

design_rules:
- bank-linked confirmation uses imported transaction evidence
- manual confirmation is allowed for hand-delivery and equivalent cases
- both routes produce payment confirmation records
- both routes may issue receipts when policy allows
- simple reconciliation exists before formal ERP-side reconciliation
