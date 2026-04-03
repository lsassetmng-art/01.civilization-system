# ============================================================
# HEALTH AND WELFARE EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: health-and-welfare-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCLUDED EVENTS
# ============================================================

Included events:
- health_check_event
- illness_event
- hospitalization_event
- rehabilitation_event
- welfare_support_start_event
- disability_support_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Health and welfare events must connect
medical, care, and support systems.
