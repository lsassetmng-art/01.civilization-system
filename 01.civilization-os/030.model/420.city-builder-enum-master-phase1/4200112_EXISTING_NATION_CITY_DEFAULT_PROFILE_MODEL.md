# ============================================================
# EXISTING NATION CITY DEFAULT PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: city-builder-enum-master-phase1
component: existing-nation-city-default-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS DEFAULTS
# ============================================================

helios_defaults:
- favored_city_role_types:
  - capital_city
  - industrial_city
  - residential_city
- favored_city_center_types:
  - parliament_center
  - mixed_symbolic_center
- favored_district_structure_types:
  - layered_status_districts
  - industrial_belt_districts


# ============================================================
# 2. NOVA DEFAULTS
# ============================================================

nova_defaults:
- favored_city_role_types:
  - market_city
  - port_city
  - logistics_city
- favored_city_center_types:
  - market_square_center
  - mixed_symbolic_center
- favored_district_structure_types:
  - civic_and_market_split_districts
  - mixed_polycentric_districts


# ============================================================
# 3. SEIWA DEFAULTS
# ============================================================

seiwa_defaults:
- favored_city_role_types:
  - capital_city
  - education_city
  - industrial_city
- favored_city_center_types:
  - administrative_center
  - parliament_center
- favored_district_structure_types:
  - simple_single_center_districts
  - rail_hub_and_outer_districts


# ============================================================
# 4. GLADIA DEFAULTS
# ============================================================

gladia_defaults:
- favored_city_role_types:
  - military_city
  - industrial_city
  - logistics_city
- favored_city_center_types:
  - administrative_center
  - mixed_symbolic_center
- favored_district_structure_types:
  - industrial_belt_districts
  - rail_hub_and_outer_districts


# ============================================================
# 5. ORPHEUS DEFAULTS
# ============================================================

orpheus_defaults:
- favored_city_role_types:
  - port_city
  - tourism_city
  - residential_city
- favored_city_center_types:
  - port_center
  - civic_square_center
- favored_district_structure_types:
  - port_and_inland_split_districts
  - mixed_polycentric_districts


# ============================================================
# 6. AURELIA DEFAULTS
# ============================================================

aurelia_defaults:
- favored_city_role_types:
  - military_city
  - port_city
- favored_city_center_types:
  - administrative_center
  - palace_center
- favored_district_structure_types:
  - layered_status_districts
  - simple_single_center_districts


# ============================================================
# 7. FREE CITIES UNION DEFAULTS
# ============================================================

free_cities_union_defaults:
- favored_city_role_types:
  - market_city
  - port_city
  - mixed_role_city
- favored_city_center_types:
  - market_square_center
  - mixed_symbolic_center
- favored_district_structure_types:
  - mixed_polycentric_districts
  - civic_and_market_split_districts


# ============================================================
# 8. FINAL RULE
# ============================================================

Existing nations
may bias city generation and builder defaults
without forcing a single city pattern.
