# ============================================================
# FORECAST LIST INTERFACE
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines forecast list screen.

main_sections:
- filter bar
- draft list
- shared list
- pending approval list
- pending handoff list

list_fields:
- title
- target summary
- scenario summary
- draft_state
- approval_state
- submission_or_handoff_state
- updated_at

requirements:
- state must be readable at a glance
- pending work must be easy to resume
- failure state must surface in list view
