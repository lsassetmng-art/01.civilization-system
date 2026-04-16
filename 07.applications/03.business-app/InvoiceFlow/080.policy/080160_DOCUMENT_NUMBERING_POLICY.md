# ============================================================
# DOCUMENT NUMBERING POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines numbering policy for invoice and receipt documents.

invoice_number_policy:
- FRONT_LOCAL invoice numbers are application-managed
- ERP_MASTER invoice numbers are ERP-managed
- local invoice numbers must not pretend to be ERP invoice numbers
- local invoice number uniqueness is within company scope
- invoice numbers should remain stable after PDF generation unless formally cancelled/recreated by policy

receipt_number_policy:
- receipt numbers are application-managed unless future tenant policy overrides exist
- receipt number uniqueness is within company scope
- reissued receipt receives a new receipt number
- prior receipt linkage is mandatory for reissue

numbering_visibility_rules:
- invoice detail must show both local and ERP invoice number fields when relevant
- receipt detail must show prior receipt number on reissue
