# ============================================================
# MAJOR NATION EXPANDED CITY SET MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: major-nation-expanded-city-set

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines expanded city sets for the major active nations
of Civilization seed-world planning.

This layer supplements Foundation truth major cities
with support cities needed for population scale,
housing realism, industry distribution,
port structure, and event density.


# ============================================================
# 2. HELIOS DEMOCRATIC KINGDOM
# ============================================================

core_cities:
- helios_city
- uno
- due
- tre

expanded_cities:
- quattro
- cinque
- sei
- sette
- otto

role_hints:
- helios_city: capital_city / royal_administrative_core / industrial_core
- uno: western_port_city
- due: residential_expansion_city
- tre: eastern_military_support_city
- quattro: resource_extraction_city
- cinque: heavy_industry_city
- sei: logistics_support_city
- sette: frontier_growth_city
- otto: mixed_residential_industrial_city


# ============================================================
# 3. NOVA COMMERCIAL FEDERATION
# ============================================================

core_cities:
- center_commercial_city
- asic_city
- gold_city
- bad_drunk

expanded_cities:
- silver_gate
- cloud_city
- north_port
- south_gate
- lumina
- market_hill

role_hints:
- center_commercial_city: capital_city / trade_finance_core
- asic_city: ai_computing_and_power_core
- gold_city: wealth_and_finance_city
- bad_drunk: old_market_and_heavy_commerce_city / nightlife_commercial_city / bar_and_tavern_district_core
- silver_gate: secondary_finance_city
- cloud_city: technology_and_network_city
- north_port: northern_logistics_port_city
- south_gate: southern_trade_gate_city
- lumina: premium_residential_and_service_city
- market_hill: startup_and_commercial_growth_city


# ============================================================
# 4. SEIWA STATE
# ============================================================

core_cities:
- kyo
- aomine
- kamihiryo
- higashi_kakona

expanded_cities:
- nishi_keihin
- minami_kiyohara
- tetsuo
- shin_seigaku
- kita_seihama
- gakuto_shirasagi

role_hints:
- kyo: capital_city / administrative_education_core
- aomine: major_industrial_city
- kamihiryo: strategic_northern_city
- higashi_kakona: eastern_port_and_industry_city
- nishi_keihin: western_housing_and_trade_city
- minami_kiyohara: agricultural_support_city
- tetsuo: railway_hub_city
- shin_seigaku: academic_support_city
- kita_seihama: northern_port_city
- gakuto_shirasagi: high_education_city


# ============================================================
# 5. GLADIA MILITARY ALLIANCE
# ============================================================

core_cities:
- third_base
- first_port_base
- second_base
- fourth_port_base
- west_border_line

expanded_cities:
- fifth_arsenal_zone
- east_logistics_city
- south_armor_city
- north_training_zone

role_hints:
- third_base: capital_city / command_core
- first_port_base: western_military_port
- second_base: inland_operational_base
- fourth_port_base: eastern_military_port
- west_border_line: border_defense_city
- fifth_arsenal_zone: weapons_and_munitions_city
- east_logistics_city: supply_and_transport_city
- south_armor_city: vehicle_and_armor_city
- north_training_zone: military_training_support_city


# ============================================================
# 6. ORPHEUS OCEANIC UNION
# ============================================================

core_cities:
- ye_moja
- ye_elewa

expanded_cities:
- ye_salima
- ye_tuba
- ye_kara
- ye_noa

role_hints:
- ye_moja: capital_city / oceanic_core
- ye_elewa: fisheries_and_coastal_trade_city
- ye_salima: brewing_city
- ye_tuba: ritual_festival_port_city
- ye_kara: coastal_residential_city
- ye_noa: secondary_fishing_city


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

official_12_cities:
- liberta
- freedal
- autonova
- liberos
- freiheim
- sovoda
- azadia
- eleusa
- nondomina
- opena
- concordia
- selefa

role_hints:
- liberta: council_city
- freedal: port_city
- autonova: civic_autonomy_city
- liberos: trade_city
- freiheim: residential_citizen_city
- sovoda: labor_and_craft_city
- azadia: culture_exchange_city
- eleusa: academic_and_ideas_city
- nondomina: defense_coordination_city
- opena: open_market_city
- concordia: mediation_city
- selefa: self_rule_community_city


# ============================================================
# 8. FINAL RULE
# ============================================================

Expanded city sets should provide enough city count
for population distribution, housing placement,
industry specialization, and event realism.
