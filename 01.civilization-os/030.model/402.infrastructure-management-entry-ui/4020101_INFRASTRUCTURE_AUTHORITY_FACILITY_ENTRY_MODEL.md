# ============================================================
# INFRASTRUCTURE AUTHORITY FACILITY ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: infrastructure-management-entry-ui
component: infrastructure-authority-facility-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY FACILITY TYPES
# ============================================================

entry_facility_types:
- road_authority_facility
- rail_operator_facility
- national_rail_authority_facility
- city_transit_authority_facility
- port_authority_facility
- transport_control_facility


# ============================================================
# 2. ENTRY RULES
# ============================================================

entry_rules:
- tapping an authority facility may open infrastructure management home
- visible actions depend on current actor permission
- restricted actions may be shown as disabled with explanation
- overview-only mode may be used where management is not allowed
- authority facility entry is the preferred formal route for infrastructure actions


# ============================================================
# 3. FINAL RULE
# ============================================================

Authority facility entry
must make infrastructure governance visible
before placement begins.
