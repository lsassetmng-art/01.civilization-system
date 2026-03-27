# ============================================================
# BIRTH AND INFANT EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: early-life-and-childhood-event-seed
component: birth-and-infant-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- pregnancy_confirmed
- birth_registered
- infant_health_checked
- parent_support_assigned
- childcare_route_decided
- household_stability_reviewed


# ============================================================
# 2. EVENT NOTES
# ============================================================

pregnancy_confirmed:
- occurs when family formation enters childbirth phase

birth_registered:
- linked to civil registry and nation-specific registration logic

infant_health_checked:
- linked to medical support, welfare posture, and household resources

parent_support_assigned:
- may assign family support, parent support, or no support depending on nation and class

childcare_route_decided:
- determines household care, nursery route, kinship route, or unstable route

household_stability_reviewed:
- checks housing, income, family support, and vulnerability conditions


# ============================================================
# 3. FINAL RULE
# ============================================================

Birth and infant events must connect civil registration,
medical support, and household condition.
