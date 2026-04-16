# ============================================================
# REVIEW REQUEST NOTE
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines recommended review viewpoints before implementation.

review_viewpoints:
- business boundary review
- invoice authority review
- ERP coexistence review
- collection workflow realism review
- payment confirmation exception review
- receipt issuance auditability review
- multilingual and multicurrency review
- mobile/tablet usability review
- DB and API consistency review

recommended_review_order:
1. business meaning and authority boundary
2. screen and flow realism
3. security and exception handling
4. api and db exact consistency
5. implementation roadmap feasibility
