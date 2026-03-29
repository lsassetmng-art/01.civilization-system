# ============================================================
# CITY BUILDER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: life-events-and-builders
component: city-builder

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the official architecture
for City Builder.

City Builder is separate from Company Builder
and Nation Builder.

City Builder handles:

- housing placement
- residential block placement
- urban block placement
- city center placement
- living area composition
- city core composition
- district-scale local layout


# ============================================================
# 2. BUILDER SEPARATION
# ============================================================

City Builder and Company Builder
must remain separate.

City Builder handles urban spatial composition.

Company Builder handles enterprise structure.

Nation Builder handles institutional
and sovereign structure.


# ============================================================
# 3. PRIMARY OBJECT FAMILIES
# ============================================================

primary_object_families:
- housing
- residential_blocks
- urban_blocks
- city_centers
- civic_core_zones
- mixed_living_districts
- settlement_expansion_zones


# ============================================================
# 4. PRIMARY ACTIONS
# ============================================================

primary_actions:
- place_housing
- place_residential_block
- place_urban_block
- place_city_center
- place_prefectural_capital_core
- place_regional_capital_core
- configure_living_area_layout
- expand_settlement_zone


# ============================================================
# 5. NATION BUILDER RELATION
# ============================================================

Nation Builder may define:

- capital rules
- city hierarchy rules
- prefectural capital existence
- regional capital existence
- city-scale governance assumptions

City Builder determines
actual map placement and layout.


# ============================================================
# 6. COMPANY BUILDER RELATION
# ============================================================

Company Builder may place:

- headquarters
- stores
- branches
- enterprise facilities

City Builder determines
the surrounding urban structure
into which those objects are placed.


# ============================================================
# 7. FINAL RULE
# ============================================================

City Builder is the canonical
urban spatial builder.

It is not limited to housing-only placement.
