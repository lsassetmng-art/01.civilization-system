# ============================================================
# AGING AND END OF LIFE EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: aging-and-end-of-life-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCLUDED EVENTS
# ============================================================

Included events:
- retirement_event
- pension_start_event
- inheritance_event
- death_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Aging and end-of-life events must preserve
status closure and inheritance transition.
