# ============================================================
# FINAL REVIEW CHECKPOINTS
# ============================================================

status: canonical-meta
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines final review checkpoints before calling design complete.

checkpoints:
- FRONT_LOCAL / ERP_MASTER meaning is unambiguous
- ERP reflection denial path is explicit
- invoice pdf and receipt pdf policies are consistent
- payment confirmation routes are realistic
- collection workflow is operationally usable
- receipt reissue keeps linkage and auditability
- API payloads and DB fields align
- mobile/tablet visibility of critical actions is preserved
- unresolved decisions are explicit and limited
- implementation roadmap is realistic

final_review_interpretation:
If all checkpoints pass,
remaining work is decision/approval refinement
or direct implementation,
not missing design structure.
