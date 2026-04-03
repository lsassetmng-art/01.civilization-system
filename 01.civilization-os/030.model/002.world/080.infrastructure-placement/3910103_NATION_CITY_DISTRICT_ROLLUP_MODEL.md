# ============================================================
# NATION CITY DISTRICT ROLLUP MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-city-district-rollup

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROLLUP LEVELS
# ============================================================

rollup_levels:
- district_level
- city_level
- nation_level


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- city_id_or_null
- district_id_or_null
- metric_dimension
- rollup_value
- contributing_facility_count
- anchor_facility_count
- board_facility_count
- updated_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation totals must remain traceable
through city and district rollups.
