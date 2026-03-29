# ============================================================
# FACILITY COST AND TIME MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-cost-and-time-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical DB master structure
for facility build cost,
maintenance cost,
and build time.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

facility_cost_and_time_master_fields:
- facility_type
- facility_type_master_ref
- base_build_cost
- base_maintenance_cost
- base_build_time_seconds
- cost_currency_type
- maintenance_currency_type
- cost_profile_version
- enabled_flag
- note


# ============================================================
# 3. INITIAL BUILD TIME BASELINES
# ============================================================

initial_build_time_baselines:
- small_lot -> 5
- medium_lot -> 10
- large_lot -> 20
- district_anchor -> 30
- city_anchor -> 30
- non_placeable_view_object -> 0


# ============================================================
# 4. FINAL RULE
# ============================================================

Initial build time values
should remain short enough
to support rapid design iteration.
