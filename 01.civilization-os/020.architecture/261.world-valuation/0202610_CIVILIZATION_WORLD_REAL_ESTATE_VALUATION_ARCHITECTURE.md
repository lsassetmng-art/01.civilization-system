# ============================================================
# CIVILIZATION WORLD REAL ESTATE VALUATION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official world-level real-estate valuation architecture
for CivilizationOS.

This architecture defines the common geographic and economic
valuation layer used before nation-specific legal/regime adjustments.

This layer is world-common.
It is not nation-regime-specific.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

CivilizationOS real-estate valuation must be split into:

1. world-common base valuation
2. nation-specific regime adjustment

World-common base valuation defines:
- how valuable a place is in itself

Nation-specific regime adjustment defines:
- how that place may be owned, used, transferred, restricted,
  or economically realized under that nation

Core principle:

place value is world-common  
legal/effective realization is nation-specific


# ============================================================
# 2. GEOGRAPHIC HIERARCHY
# ============================================================

The valuation layer must support the following hierarchy:

- planet
- continent
- nation
- region
- district
- parcel

The valuation focus for real-estate use should primarily be:
- continent
- region
- district
- parcel

Nation exists in the hierarchy,
but nation-specific legal treatment is handled in a separate layer.


# ============================================================
# 3. WORLD-COMMON VALUATION AXES
# ============================================================

The following valuation axes are world-common:

- commercial_value
- residential_value
- logistics_value
- infrastructure_value
- strategic_value
- scarcity_value
- safety_value
- prestige_value

These values must describe the place itself,
not the legal regime of the nation.


# ============================================================
# 4. AXIS SCALE
# ============================================================

Each valuation axis should use a 5-level scale.

level_5:
- ultra_high

level_4:
- high

level_3:
- standard

level_2:
- low

level_1:
- frontier

This scale is intentionally simple and world-design friendly.


# ============================================================
# 5. AREA / DISTRICT COMPOSITE RANK
# ============================================================

In addition to axis-by-axis evaluation,
a composite area rank should exist.

recommended_composite_ranks:
- ultra_prime
- prime
- standard
- frontier
- restricted

Meaning:

ultra_prime:
highest-value districts in civilization-scale terms

prime:
strong high-value areas

standard:
ordinary useful areas

frontier:
low-density / developing / peripheral areas

restricted:
areas whose free-market comparability is limited
due to strategic, civic, military, or other strong constraints


# ============================================================
# 6. RESTRICTED RULE
# ============================================================

restricted does not mean low value only.

restricted means:
- difficult to compare in free-market terms
- constrained by strategy, military, safety, or strong public rule
- may have high strategic value but low free-market liquidity

This distinction is mandatory.


# ============================================================
# 7. LAND BASE VALUE PRINCIPLE
# ============================================================

Land base value should be determined from:

- region rank
- district rank
- parcel rank
- commercial_value
- residential_value
- logistics_value
- infrastructure_value
- strategic_value
- scarcity_value
- prestige_value

At this stage,
strict area-based valuation is not required.

Area/size may be added later as an expansion layer.


# ============================================================
# 8. BUILDING BASE VALUE PRINCIPLE
# ============================================================

Building base value should be determined from:

- building_type
- building_grade
- building_status
- construction_state
- building_use_class
- district rank
- infrastructure_value
- prestige_value

Recommended building grades:
- luxury
- premium
- standard
- aging
- damaged


# ============================================================
# 9. RENT BASE VALUE PRINCIPLE
# ============================================================

Rent base value should be determined from:

- residential_value or commercial_value
- district rank
- infrastructure_value
- safety_value
- prestige_value
- scarcity_value

This is separate from legal rent regulation or property rights regime.


# ============================================================
# 10. PROPERTY USE CLASSES
# ============================================================

The world-common valuation layer should support:

- residential
- commercial
- industrial
- agricultural
- civic
- military
- strategic_restricted

These classes affect valuation meaning,
but nation-specific legality remains outside this layer.


# ============================================================
# 11. NATION REGIME SEPARATION RULE
# ============================================================

The following must not be encoded in the world-common valuation layer:

- whether ownership is allowed
- whether company holding is allowed
- whether foreigners may hold
- whether state approval is required
- whether expropriation risk is high
- whether transfer is legal

Those belong to nation-specific regime layers.

This separation is mandatory.


# ============================================================
# 12. FUTURE AREA EXPANSION RULE
# ============================================================

Parcel/building/unit area may be added later.

Future optional fields may include:
- parcel_area
- building_area
- unit_area

When area becomes available,
the valuation layer may evolve into:

base_value
x area_adjustment
x density_adjustment
x use_adjustment

But current design must not depend on area being fully defined now.


# ============================================================
# 13. MINIMUM REQUIRED FUTURE MODELS
# ============================================================

The valuation architecture should later support at minimum:

- continent_valuation_profile
- region_valuation_profile
- district_valuation_profile
- parcel_valuation_profile
- building_valuation_profile
- rental_valuation_profile

These may be implemented as model or runtime support objects later.


# ============================================================
# 14. FINAL ARCHITECTURAL RULE
# ============================================================

CivilizationOS must maintain a world-common real-estate valuation layer.

Core summary:

- geographic/economic value is world-common
- legal/effective realization is nation-specific
- valuation axes are independent from nation regime
- composite area rank is supported
- area/size can be added later
- current valuation must not depend on unfinished world area design
