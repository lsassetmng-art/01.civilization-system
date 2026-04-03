# ============================================================
# HOUSING AND LIVING EVENT MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-life-events
component: housing-and-living-event

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INCLUDED EVENTS
# ============================================================

Included events:
- first_independent_living_event
- rental_contract_event
- move_event
- housing_purchase_event
- housing_construction_event
- housing_move_in_event
- furniture_installation_event
- housing_loan_start_event


# ============================================================
# 2. FINAL RULE
# ============================================================

Housing and living events must connect
housing builder, property, and household state.
