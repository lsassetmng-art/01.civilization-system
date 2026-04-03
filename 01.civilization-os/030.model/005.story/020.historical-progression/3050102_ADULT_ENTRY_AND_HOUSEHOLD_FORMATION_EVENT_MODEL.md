# ============================================================
# ADULT ENTRY AND HOUSEHOLD FORMATION EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: life-course-and-family-timing-seed
component: adult-entry-and-household-formation-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- first_stable_job_started
- first_unstable_job_started
- household_independence_started
- rental_household_started
- cohabitation_started
- engagement_started
- marriage_completed
- first_child_planned
- first_child_born
- housing_purchase_started
- family_business_inheritance_started
- delayed_adulthood_phase_started


# ============================================================
# 2. FINAL RULE
# ============================================================

Adult-entry and household-formation events must connect
school exit, work, partnership, housing, and childbirth.
