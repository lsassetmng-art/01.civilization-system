# ============================================================
# ESTIMATECREATOR ESTIMATE COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: EstimateCreator
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: estimate-cockpit-interface

purpose:
Makes the estimate cockpit screen hierarchy explicit.

screen_goal:
- show what threatens estimate conversion right now
- unify approval pending items, conversion blockers, and recent revisions
- provide one commercial-control review pass before diving into edit detail

screen_sections:
- estimate summary header
- pending approval stack
- conversion blocker stack
- recent revisions panel
- quick jump to revision and approval review

item_card_fields:
- item title
- short summary
- state badge
- validity or review time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open estimate detail
- open revision review
- open approval review
- request approval
- mark reviewed
- open conversion readiness detail

interface_rules:
- pending approval items must be separated visually from conversion blockers
- recent revisions must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- line-item editing belongs elsewhere; cockpit is a control surface first
