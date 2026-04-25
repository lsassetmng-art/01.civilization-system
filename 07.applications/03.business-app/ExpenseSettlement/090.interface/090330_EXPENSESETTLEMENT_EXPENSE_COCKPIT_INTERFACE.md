# ============================================================
# EXPENSESETTLEMENT EXPENSE_COCKPIT_INTERFACE
# ============================================================

status: canonical
layer: interface
system: applications
application: ExpenseSettlement
directory: 090.interface
owner: Boss
prepared_by: Zero
date: 2026-04-16
scope: expense-cockpit-interface

purpose:
Makes the expense cockpit screen hierarchy explicit.

screen_goal:
- show what threatens reimbursement or ERP handoff readiness right now
- unify receipt exceptions, compliance blockers, and ERP handoff readiness
- provide one settlement-control review pass before diving into detail screens

screen_sections:
- expense summary header
- receipt exception stack
- compliance blocker stack
- ERP handoff readiness panel
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
- open expense detail
- open exception review
- open approval review
- approve settlement
- hold settlement
- open ERP handoff detail

interface_rules:
- receipt exceptions must be separated visually from compliance blockers
- ERP handoff items must stay visible above long detail lists
- cockpit must be scannable in one vertical pass
- deep claim editing belongs elsewhere; cockpit is a control surface first
