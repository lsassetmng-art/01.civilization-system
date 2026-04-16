# ============================================================
# DOCUMENT FOOTER AND NUMBERING POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes concrete document footer and numbering rules.

invoice_footer_policy:
- FRONT_LOCAL invoice PDF includes an authority note
- recommended note intent:
  - this invoice was issued from InvoiceFlow as a front-managed invoice
- wording may be localized per document language
- ERP_MASTER invoice does not automatically inherit the same footer note

receipt_numbering_policy:
- format is RCT-YYYYMMDD-serial
- serial is unique within company scope for the date policy used
- reissued receipt receives a new number
- prior receipt linkage remains mandatory

visibility_rules:
- receipt detail must show receipt number clearly
- reissue detail must show prior receipt number/linkage clearly
- invoice detail should expose FRONT_LOCAL vs ERP_MASTER clearly
