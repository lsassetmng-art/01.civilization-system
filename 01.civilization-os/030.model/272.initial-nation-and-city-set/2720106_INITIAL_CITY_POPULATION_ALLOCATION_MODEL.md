# ============================================================
# INITIAL CITY POPULATION ALLOCATION MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: initial-city-population-allocation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the allocation posture for population
across expanded major-nation city sets.


# ============================================================
# 2. ALLOCATION RULE
# ============================================================

Population should not be concentrated
only into the capital city.

Recommended allocation posture:
- capital_city: very_high
- major_core_city: high
- support_city: medium
- housing_or_agricultural_support_city: low_to_medium
- special_historical_city: variable


# ============================================================
# 3. NATION-SPECIFIC NOTES
# ============================================================

helios_democratic_kingdom:
- capital and heavy-industry cities should dominate
- frontier growth cities should retain expansion capacity

nova_commercial_federation:
- capital and finance/tech cities should dominate
- secondary trade and residential cities should absorb overflow

seiwa_state:
- capital, industry, railway, and education cities should balance population

gladia_military_alliance:
- command, arsenal, logistics, and port bases should carry structured concentration

orpheus_oceanic_union:
- capital and main coastal cities dominate, smaller coastal cities remain mid-sized

free_cities_union:
- population is more distributed across multiple cities than monarchic states


# ============================================================
# 4. FINAL RULE
# ============================================================

Population allocation must reflect function, not only rank.
