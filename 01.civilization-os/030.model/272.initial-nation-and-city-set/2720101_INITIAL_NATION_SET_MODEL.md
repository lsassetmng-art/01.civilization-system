# ============================================================
# INITIAL NATION SET MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: initial-nation-set

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the initial major nation set
for Civilization seed-world planning.


# ============================================================
# 2. INITIAL NATION SET
# ============================================================

## helios_democratic_kingdom
founder:
- helios_rosso
capital_city:
- helios_city
continent:
- northern_continent
primary_industries:
- resources
- heavy_industry
- ai_machinery

## nova_commercial_federation
founder:
- isaac_cowen
capital_city:
- center_commercial_city
continent:
- central_continent
primary_industries:
- finance
- ai_computing
- trade
special_note:
- asic holds practical power center

## seiwa_state
founders:
- ninomiya_jissho
- honda_akira
- niijima_shigeo
capital_city:
- kyo
continent:
- central_continent
primary_industries:
- education
- civil_engineering
- agriculture
- industry
- shipbuilding
- railways

## gladia_military_alliance
founder:
- jack_davis
capital_city:
- third_base
continent:
- central_continent
primary_industries:
- automobiles
- firearms
- mercenary_services

## orpheus_oceanic_union
founders:
- ibrahim_adebayo
- kevin
- joachim
capital_city:
- ye_moja
continent:
- southern_continent
primary_industries:
- brewing
- fishery

## aurelia_federal_republic
founder:
- mikhail_ivanov
capital_city_historical:
- svyat_mikhail
continent:
- southern_continent
primary_industries:
- fishery
- firearms
runtime_state:
- dismantled

## free_cities_union
founder_model:
- no_single_founder_supreme
capital_model:
- no_permanent_capital_supreme
continent:
- southern_continent
primary_industries:
- trade
- civic_autonomy_services
- port_commerce
- urban_crafts
governance_model:
- representative_council_of_city_leaders


# ============================================================
# 3. FINAL RULE
# ============================================================

Initial nations must preserve both Foundation truth
and seed-world runtime posture.
