# ============================================================
# CITY AND DISTRICT MODIFIER MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-modifier-evaluation
component: city-and-district-modifier

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED FIELDS
# ============================================================

city_and_district_modifier_fields:
- city_id_or_null
- district_id_or_null
- facility_type_or_null
- build_cost_multiplier
- maintenance_multiplier
- build_time_multiplier
- activation_delay_seconds
- placement_preference_weight
- note
- enabled_flag


# ============================================================
# 2. EXAMPLE EFFECTS
# ============================================================

example_effects:
- central_finance_district may increase finance facility cost
- port_district may reduce logistics-linked build friction
- protected_district may reduce delay for official facilities
- remote_island_district may increase infrastructure-linked delay


# ============================================================
# 3. FINAL RULE
# ============================================================

City and district modifiers
capture local build reality
that nation-wide rules cannot express alone.
