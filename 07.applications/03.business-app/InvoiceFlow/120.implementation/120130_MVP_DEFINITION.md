# ============================================================
# MVP DEFINITION
# ============================================================

status: canonical
layer: implementation
system: applications
application: InvoiceFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the smallest meaningful release of InvoiceFlow.

mvp_goal:
Support practical FRONT_LOCAL invoice operation,
manual payment confirmation,
receipt issuance,
and basic collection follow-up
without requiring ERP adoption.

mvp_in_scope:
- company-scoped login and basic permission enforcement
- invoice list
- invoice detail
- create FRONT_LOCAL invoice
- invoice PDF generation
- send request registration
- manual payment confirmation
- partial and difference handling
- receipt issuance
- overdue detection
- collection action recording
- collection dashboard basic view

mvp_out_of_scope:
- bank transaction import automation
- ERP payment reflection
- advanced saved filters
- deep performance tuning
- advanced reporting packs

mvp_reasoning:
This gives standalone value for ERP non-contract users
and also creates the stable operational front needed
before bank and ERP-connected phases.
