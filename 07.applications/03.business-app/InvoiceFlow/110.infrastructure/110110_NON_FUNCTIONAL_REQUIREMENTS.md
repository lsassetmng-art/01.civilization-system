# ============================================================
# NON FUNCTIONAL REQUIREMENTS
# ============================================================

status: canonical
layer: infrastructure
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines non-functional requirements for InvoiceFlow.

availability_requirements:
- core invoice and payment visibility should tolerate ordinary retry/reload behavior
- operator-critical screens should fail clearly, not silently

performance_requirements:
- invoice list should support practical operational paging
- dashboard should prioritize urgent widget rendering
- overdue and priority collection lists should remain usable at operational scale
- candidate bank-match queries should be index-aware

security_requirements:
- company scope isolation is mandatory
- elevated actions require audit trail
- authority boundary violations must fail closed

usability_requirements:
- critical warning badges must remain visible on smartphone and tablet
- next action should be understandable without deep navigation
- multi-device adaptation is mandatory

document_requirements:
- PDF generation should be deterministic for the same approved input
- document language and currency must remain explicit

audit_requirements:
- state-changing financial actions must be traceable
- reissue and override actions must be traceable
