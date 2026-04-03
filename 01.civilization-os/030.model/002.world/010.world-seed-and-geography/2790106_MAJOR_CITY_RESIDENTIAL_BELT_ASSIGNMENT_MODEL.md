# ============================================================
# MAJOR CITY RESIDENTIAL BELT ASSIGNMENT MODEL
# ============================================================

status: canonical
layer: model
scope: public-facility-and-residential-seed
component: major-city-residential-belt-assignment

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines city-level residential belt assignment
for major cities.


# ============================================================
# 2. CITY ASSIGNMENTS
# ============================================================

helios_city:
- inner_symbolic_elite_belt
- middle_general_citizen_belt
- outer_worker_and_redevelopment_belt

center_commercial_city:
- dense_rental_belt
- executive_luxury_residential_belt
- high_rise_residential_belt

asic_city:
- employee_residential_cluster
- executive_residential_support
- secure_corporate_housing_belt

kyo:
- family_residential_belt
- student_residential_belt
- rail_oriented_mixed_residential_belt

third_base:
- soldier_family_residential_belt
- controlled_worker_residential_belt
- barracks_support_belt

ye_moja:
- coastal_residential_belt
- ritual_adjacent_residential_belt
- port_adjacent_housing_belt

svyat_mikhail:
- believer_residential_legacy_belt
- fragmented_post_collapse_housing_belt

liberta:
- mixed_use_residential_belt
- market_adjacent_citizen_housing_belt
- civic_mixed_housing_belt


# ============================================================
# 3. FINAL RULE
# ============================================================

Residential belts should make city identity legible
at the seed-world level.
