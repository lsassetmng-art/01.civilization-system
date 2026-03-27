# ============================================================
# DEATH AND FUNERAL EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: end-of-life-inheritance-and-succession-seed
component: death-and-funeral-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EVENT FAMILY
# ============================================================

event_family:
- death_confirmed
- death_registered
- household_notified
- funeral_route_selected
- memorial_type_selected
- religious_or_civic_officiation_selected
- burial_or_equivalent_completed
- post_funeral_household_reviewed


# ============================================================
# 2. FUNERAL ROUTE TYPES
# ============================================================

funeral_route_types:
- civic_funeral
- religious_funeral
- household_funeral
- service_honor_funeral
- doctrine_funeral
- island_ritual_funeral
- low_resource_funeral


# ============================================================
# 3. FINAL RULE
# ============================================================

Death and funeral events must connect registration,
ritual, class position, and household aftermath.
