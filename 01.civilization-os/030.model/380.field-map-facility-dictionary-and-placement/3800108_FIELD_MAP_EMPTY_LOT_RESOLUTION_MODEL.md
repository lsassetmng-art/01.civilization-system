# ============================================================
# FIELD MAP EMPTY LOT RESOLUTION MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: field-map-empty-lot-resolution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EMPTY LOT STATES
# ============================================================

empty_lot_states:
- fully_buildable
- zoning_restricted
- operator_restricted
- infrastructure_missing
- protected_lot
- reserved_lot


# ============================================================
# 2. RESOLUTION RULES
# ============================================================

resolution_rules:
- fully_buildable opens full build menu
- zoning_restricted opens filtered build menu or restriction explanation
- operator_restricted opens restricted explanation
- infrastructure_missing opens filtered build menu plus requirement notice
- protected_lot blocks build flow
- reserved_lot opens reserved-state overview


# ============================================================
# 3. FINAL RULE
# ============================================================

Empty lot interaction must explain
why something may or may not be built,
not simply fail silently.
