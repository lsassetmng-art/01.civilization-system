# ============================================================
# COMPETITOR COMPARISON NOTE
# ============================================================

status: canonical-note
layer: meta
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Captures the design conclusions derived from competitor comparison.

comparison_conclusion:
InvoiceFlow should not compete by becoming the heaviest accounting tool
or the deepest settlement-only specialist.
Its strongest position is an integrated operational front
that keeps invoice handling, payment confirmation,
collection management, receipt issuance,
and ERP-aware operation in one place.

design_implications:
- keep collection management first-class
- keep invoice authority visible
- keep ERP coexistence explicit
- keep realistic confirmation routes
- keep multi-device operational usability high

must_not_lose:
- simple invoice-to-payment-to-collection continuity
- operator understanding of what is ERP-master and what is not
- ease of receipt issuance after payment confirmation
- visibility of overdue and priority collection work
