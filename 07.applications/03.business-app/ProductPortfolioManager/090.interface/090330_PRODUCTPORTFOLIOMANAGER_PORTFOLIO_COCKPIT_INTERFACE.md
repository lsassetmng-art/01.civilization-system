# ============================================================
# PRODUCTPORTFOLIOMANAGER PORTFOLIO_COCKPIT_INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: ProductPortfolioManager
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: portfolio-cockpit-interface

purpose:
Makes the portfolio cockpit screen hierarchy explicit.

screen_goal:
- show what threatens portfolio trust or decision-support readiness right now
- unify prioritization exceptions, management attention, and decision-support readiness
- provide one management-control review pass before diving into detail screens

screen_sections:
- portfolio summary header
- prioritization exception stack
- management attention stack
- decision-support readiness panel
- quick jump to prioritization exception review

item_card_fields:
- item title
- short summary
- state badge
- effective time
- owner badge
- approval badge
- quick action buttons

primary_actions:
- open portfolio detail
- open exception review
- open approval review
- approve prioritization
- hold prioritization
- open decision-support detail

interface_rules:
- prioritization exceptions must be separated visually from management attention items
- decision-support items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep item editing belongs elsewhere; cockpit is a control surface first
