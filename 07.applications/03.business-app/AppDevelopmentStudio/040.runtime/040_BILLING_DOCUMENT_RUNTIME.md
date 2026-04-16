# ============================================================
# BILLING DOCUMENT RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines runtime handling for invoice, receipt, and tax-display generation.

runtime_steps:
1. resolve billable event or billing period
2. resolve plan and cycle
3. resolve subtotal, tax, and total
4. resolve document type
5. generate invoice or receipt record
6. expose document for later viewing/downloading
7. keep billing-document history aligned with billing-event history

runtime_principles:
- amount breakdown must be deterministic
- tax display must remain explicit
- invoice/receipt generation must remain auditable
- user-visible wording must remain simple
