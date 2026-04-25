# ============================================================
# PROJECTFLOW PROJECT COCKPIT INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: ProjectFlow
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: project-cockpit-interface

purpose:
Makes the project cockpit screen hierarchy explicit.

screen_goal:
- show what threatens delivery right now
- unify blocked items, at-risk items, upcoming milestones, and escalation needs
- provide one management-oriented review pass before diving into detail screens

screen_sections:
- project summary header
- blocked items stack
- at-risk items stack
- upcoming milestones panel
- owner escalation panel
- quick jump to dependency or risk review

item_card_fields:
- item title
- short summary
- state badge
- due or milestone time
- owner badge
- risk badge
- quick action buttons

primary_actions:
- open item detail
- open milestone detail
- open dependency review
- escalate owner
- mark reviewed
- open full project board

interface_rules:
- blocked items must be separated visually from at-risk items
- upcoming milestones must stay visible above long detail lists
- the cockpit must be scannable in one vertical pass
- detail editing belongs elsewhere; cockpit is a control surface first
