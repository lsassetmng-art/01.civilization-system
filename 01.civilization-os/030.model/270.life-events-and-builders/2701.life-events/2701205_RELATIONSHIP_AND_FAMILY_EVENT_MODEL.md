# ============================================================
# RELATIONSHIP AND FAMILY EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: relationship-and-family-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCLUDED EVENTS
# ============================================================

Included events:
- relationship_start_event
- engagement_event
- marriage_event
- divorce_event
- support_dependency_event
- caregiving_start_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Relationship and family events must preserve
relationship state transitions and household impact.
