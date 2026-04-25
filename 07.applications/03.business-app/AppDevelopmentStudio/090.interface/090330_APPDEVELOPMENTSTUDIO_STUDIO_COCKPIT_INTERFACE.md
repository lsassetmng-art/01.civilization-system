# ============================================================
# APPDEVELOPMENTSTUDIO STUDIO_COCKPIT_INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: AppDevelopmentStudio
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: studio-cockpit-interface

purpose:
Makes the studio cockpit screen hierarchy explicit.

screen_goal:
- show what threatens build or release readiness right now
- unify implementation exceptions, build blockers, and release readiness
- provide one development-control review pass before diving into detail screens

screen_sections:
- studio summary header
- implementation exception stack
- build blocker stack
- release readiness panel
- quick jump to exception review

item_card_fields:
- item title
- short summary
- state badge
- due time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open studio detail
- open exception review
- open approval review
- approve work
- hold work
- open release readiness detail

interface_rules:
- implementation exceptions must be separated visually from build blockers
- release readiness items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep artifact editing belongs elsewhere; cockpit is a control surface first
