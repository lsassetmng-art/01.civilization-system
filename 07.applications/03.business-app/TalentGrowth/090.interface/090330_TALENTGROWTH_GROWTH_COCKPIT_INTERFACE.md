# ============================================================
# TALENTGROWTH GROWTH_COCKPIT_INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: TalentGrowth
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: growth-cockpit-interface

purpose:
Makes the growth cockpit screen hierarchy explicit.

screen_goal:
- show what threatens readiness or decision-support readiness right now
- unify readiness exceptions, management attention, and decision-support readiness
- provide one management-control review pass before diving into detail screens

screen_sections:
- growth summary header
- readiness exception stack
- management attention stack
- decision-support readiness panel
- quick jump to readiness exception review

item_card_fields:
- item title
- short summary
- state badge
- effective time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open growth detail
- open exception review
- open approval review
- approve growth path
- hold growth path
- open decision-support detail

interface_rules:
- readiness exceptions must be separated visually from management attention items
- decision-support items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep person editing belongs elsewhere; cockpit is a control surface first
