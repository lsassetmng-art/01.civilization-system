# ============================================================
# INVOICEFLOW BILLING COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: InvoiceFlow
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: billing-cockpit-interface

purpose:
Makes the billing cockpit screen hierarchy explicit.

screen_goal:
- show what threatens settlement or downstream finance handoff right now
- unify pending approvals, settlement blockers, and finance readiness
- provide one financial-control review pass before diving into detail screens

screen_sections:
- invoice summary header
- pending approval stack
- settlement blocker stack
- downstream finance panel
- quick jump to settlement exception review

item_card_fields:
- item title
- short summary
- state badge
- due time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open invoice detail
- open exception review
- open approval review
- approve
- hold
- open downstream finance detail

interface_rules:
- pending approvals must be separated visually from settlement blockers
- downstream finance items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- line editing belongs elsewhere; cockpit is a control surface first
