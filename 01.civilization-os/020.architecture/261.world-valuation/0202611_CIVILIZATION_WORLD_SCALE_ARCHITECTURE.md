# ============================================================
# CIVILIZATION WORLD SCALE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official world scale architecture of CivilizationOS.

This architecture defines the macro geographic scale
used for world valuation, real-estate valuation,
regional density, and later logistics/economy balancing.

This document does not define every city or parcel.
It defines the macro world-scale baseline.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

CivilizationOS world scale must be explicit enough
to support:

- real-estate valuation
- geography-aware economy
- region/district density design
- infrastructure distribution
- strategic restriction planning
- future logistics balancing

World scale must be stable,
but detailed local mapping may expand later.


# ============================================================
# 2. CONTINENT SET
# ============================================================

The world has three primary continents:

- central_continent
- north_continent
- south_continent


# ============================================================
# 3. OFFICIAL CONTINENT SCALE
# ============================================================

## 3.1 CENTRAL CONTINENT
reference:
Eurasia-class baseline

official_area_estimate:
approximately 55,000,000 km2

## 3.2 NORTH CONTINENT
reference:
approximately two-thirds of central continent

official_area_estimate:
approximately 37,000,000 km2

## 3.3 SOUTH CONTINENT
reference:
approximately one-half of central continent

official_area_estimate:
approximately 27,500,000 km2

## 3.4 TOTAL
official_total_area_estimate:
approximately 119,500,000 km2


# ============================================================
# 4. CONTINENT-SCALE DESIGN VARIABLES
# ============================================================

Each continent must support world-common macro variables.

Minimum variables:
- total_area_estimate
- habitable_ratio
- urbanization_ratio
- infrastructure_density_rank
- commercial_concentration_rank
- strategic_restricted_ratio
- agricultural_capacity_rank
- logistics_connectivity_rank
- prestige_concentration_rank


# ============================================================
# 5. INITIAL DEFAULT BASELINES
# ============================================================

These are initial design baselines.
They may be refined later without changing continent identity.

## 5.1 CENTRAL CONTINENT
role:
main civilization concentration center

baseline:
- habitable_ratio: high
- urbanization_ratio: high
- infrastructure_density_rank: ultra_high
- commercial_concentration_rank: ultra_high
- strategic_restricted_ratio: medium
- agricultural_capacity_rank: high
- logistics_connectivity_rank: ultra_high
- prestige_concentration_rank: ultra_high

## 5.2 NORTH CONTINENT
role:
large expansion / frontier / industrial-potential continent

baseline:
- habitable_ratio: medium
- urbanization_ratio: medium
- infrastructure_density_rank: standard
- commercial_concentration_rank: standard
- strategic_restricted_ratio: medium_high
- agricultural_capacity_rank: medium
- logistics_connectivity_rank: standard
- prestige_concentration_rank: medium

## 5.3 SOUTH CONTINENT
role:
compact high-contrast continent with mixed development pockets

baseline:
- habitable_ratio: medium
- urbanization_ratio: medium_low
- infrastructure_density_rank: standard
- commercial_concentration_rank: medium
- strategic_restricted_ratio: medium
- agricultural_capacity_rank: medium_high
- logistics_connectivity_rank: medium
- prestige_concentration_rank: medium


# ============================================================
# 6. WORLD-COMMON RANK SCALE
# ============================================================

Recommended rank scale:
- ultra_high
- high
- standard
- low
- frontier

This scale is preferred for macro world variables.

For ratios, percentage-like or decimal values may later be added.
At architecture stage, rank-based baseline is sufficient.


# ============================================================
# 7. HABITABLE AREA RULE
# ============================================================

Not all continent area should be treated as equally habitable,
urbanizable, or freely market-usable.

The world scale layer must preserve distinction between:
- total area
- habitable area
- urbanized area
- restricted area
- agriculturally productive area

This distinction is mandatory for later property valuation.


# ============================================================
# 8. REAL ESTATE VALUATION RELATION
# ============================================================

World scale must influence real-estate valuation through:
- supply pressure
- regional density
- urban concentration
- logistics accessibility
- infrastructure depth
- strategic restriction presence
- prestige concentration

World scale does not directly set parcel price,
but strongly affects the base valuation environment.


# ============================================================
# 9. NATION REGIME SEPARATION RULE
# ============================================================

World scale is not the same as nation regime.

World scale defines:
- place potential
- continental density structure
- logistics and urban concentration baseline

Nation regime defines:
- ownership legality
- transferability
- company holding legality
- foreign holding legality
- expropriation risk

This separation is mandatory.


# ============================================================
# 10. FUTURE EXPANSION RULE
# ============================================================

This architecture should later support:
- region-scale area estimates
- district-scale density maps
- habitable belt maps
- strategic corridor maps
- infrastructure corridor maps
- city hierarchy maps

These are future expansions.
They are not required to lock the world scale now.


# ============================================================
# 11. FINAL ARCHITECTURAL RULE
# ============================================================

CivilizationOS world scale must be explicit at continent level.

Core summary:

- central continent: about 55 million km2
- north continent: about 37 million km2
- south continent: about 27.5 million km2
- total: about 119.5 million km2
- world scale affects valuation, logistics, and density
- nation regime remains a separate layer
