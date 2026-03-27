# ============================================================
# INITIAL RESIDENTIAL BELT MODEL
# ============================================================

status: canonical
layer: model
scope: public-facility-and-residential-seed
component: initial-residential-belt

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

helios_city:
- inner_symbolic_elite_belt
- middle_general_citizen_belt
- outer_worker_and_redevelopment_belt


# ============================================================
# 2. NOVA
# ============================================================

center_commercial_city and asic_city region:
- high-rise_residential_belt
- executive_luxury_residential_belt
- dense_rental_belt
- employee_residential_cluster


# ============================================================
# 3. SEIWA
# ============================================================

kyo and major rail cities:
- family_residential_belt
- student_residential_belt
- rail_oriented_mixed_residential_belt
- orderly_suburban_expansion_belt


# ============================================================
# 4. GLADIA
# ============================================================

third_base and military cities:
- barracks_support_belt
- soldier_family_residential_belt
- controlled_worker_residential_belt


# ============================================================
# 5. ORPHEUS
# ============================================================

major island cities:
- coastal_residential_belt
- craft_adjacent_residential_belt
- ritual_adjacent_residential_belt


# ============================================================
# 6. AURELIA
# ============================================================

historical cities:
- believer_residential_legacy_belt
- fragmented_post_collapse_housing_belt


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

union cities:
- mixed_use_residential_belt
- workshop_adjacent_housing_belt
- market_adjacent_citizen_housing_belt


# ============================================================
# 8. FINAL RULE
# ============================================================

Residential belts must preserve nation-specific
living structure and city function.
