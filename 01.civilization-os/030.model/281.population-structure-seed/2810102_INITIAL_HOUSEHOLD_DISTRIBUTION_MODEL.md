# ============================================================
# INITIAL HOUSEHOLD DISTRIBUTION MODEL
# ============================================================

status: canonical
layer: model
scope: population-structure-seed
component: initial-household-distribution

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HOUSEHOLD TYPES
# ============================================================

Recommended household types:
- single_household
- couple_household
- family_household
- extended_family_household
- shared_urban_household
- controlled_institutional_household


# ============================================================
# 2. NATIONAL POSTURE
# ============================================================

helios_democratic_kingdom:
- family_household: high
- worker_household: high
- single_household: medium

nova_commercial_federation:
- single_household: high
- couple_household: high
- high_density_urban_household: very_high
- family_household: medium

seiwa_state:
- family_household: very_high
- student_adjacent_household: high
- extended_family_household: medium

gladia_military_alliance:
- controlled_institutional_household: high
- soldier_family_household: high
- single_barracks_like_household: high

orpheus_oceanic_union:
- family_household: high
- extended_family_household: medium_high
- island_community_household: high

aurelia_federal_republic:
- fragmented_household: high
- controlled_believer_household_legacy: medium
- stable_family_household: low

free_cities_union:
- single_household: high
- shared_urban_household: high
- mixed_craft_household: medium_high
- family_household: medium


# ============================================================
# 3. FINAL RULE
# ============================================================

Household distribution must match
housing form and urban life.
