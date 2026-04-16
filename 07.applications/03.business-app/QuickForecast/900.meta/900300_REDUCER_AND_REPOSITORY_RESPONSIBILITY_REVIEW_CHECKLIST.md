# ============================================================
# REDUCER AND REPOSITORY RESPONSIBILITY REVIEW CHECKLIST
# ============================================================

status: canonical
layer: meta
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines review checklist for reducer transitions and repository responsibility.

check_items:
- navigation is always modeled as effect
- editable content is preserved in state
- save transitions are explicit
- Pro gate checks occur before Pro navigation/effects
- each key event has a clear repository owner
- local save and governed action are never conflated
