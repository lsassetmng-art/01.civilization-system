# ============================================================
# QUICKFORECAST FORECAST COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: QuickForecast
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: forecast-cockpit-interface

purpose:
Makes the forecast cockpit screen hierarchy explicit.

screen_goal:
- show what threatens forecast trust or decision-support readiness right now
- unify scenario exceptions, management attention, and decision-support readiness
- provide one management-control review pass before diving into detail screens

screen_sections:
- forecast summary header
- scenario exception stack
- management attention stack
- decision-support readiness panel
- quick jump to scenario exception review

item_card_fields:
- item title
- short summary
- state badge
- effective time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open forecast detail
- open exception review
- open approval review
- approve scenario
- hold scenario
- open decision-support detail

interface_rules:
- scenario exceptions must be separated visually from management attention items
- decision-support items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep metric editing belongs elsewhere; cockpit is a control surface first
