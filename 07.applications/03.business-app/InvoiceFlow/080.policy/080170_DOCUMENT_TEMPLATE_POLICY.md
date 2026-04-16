# ============================================================
# DOCUMENT TEMPLATE POLICY
# ============================================================

status: canonical
layer: policy
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines template policy for invoice and receipt PDFs.

template_rules:
- invoice PDF and receipt PDF must use approved template codes
- template output must support multilingual text expansion
- template output must support multicurrency display without ambiguity
- FRONT_LOCAL invoice template must not visually imply ERP master authority
- receipt template must clearly show linked payment facts when required by policy
- reissued receipts must remain distinguishable from originally issued receipts when policy requires

document_footer_rules:
- document footer may include authority note
- FRONT_LOCAL invoice may include note that ERP master authority is separate when tenant policy requires
- receipt reissue may include reissue reason or reissue marker when tenant policy requires
