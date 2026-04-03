# ============================================================
# BIRTH AND CHILDCARE EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: birth-and-childcare-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCLUDED EVENTS
# ============================================================

Included events:
- pregnancy_event
- birth_event
- naming_event
- infant_checkup_event
- vaccination_event
- childcare_start_event
- nursery_start_event
- childcare_burden_event
- toddler_growth_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Birth and childcare events must support
family, health, and care progression.
