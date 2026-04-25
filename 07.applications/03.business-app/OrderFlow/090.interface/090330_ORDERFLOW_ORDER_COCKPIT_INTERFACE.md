# ============================================================
# ORDERFLOW ORDER COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: OrderFlow
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: order-cockpit-interface

purpose:
Makes the order cockpit screen hierarchy explicit.

screen_goal:
- show what threatens fulfillment or downstream handoff right now
- unify pending approvals, fulfillment blockers, and downstream readiness
- provide one operational-control review pass before diving into detail screens

screen_sections:
- order summary header
- pending approval stack
- fulfillment blocker stack
- downstream handoff panel
- quick jump to exception review

item_card_fields:
- item title
- short summary
- state badge
- required-by time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open order detail
- open exception review
- open approval review
- approve
- hold
- open downstream handoff detail

interface_rules:
- pending approvals must be separated visually from fulfillment blockers
- downstream handoff items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- line editing belongs elsewhere; cockpit is a control surface first
