# ============================================================
# INITIAL MAJOR CITY POPULATION MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: initial-major-city-population

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines corrected major city population baselines
for the initial major nations.


# ============================================================
# 2. HELIOS DEMOCRATIC KINGDOM
# ============================================================

- helios_city: 40,000,000
- uno: 18,000,000
- due: 15,000,000
- tre: 14,000,000
- quattro: 10,000,000
- cinque: 12,000,000
- sei: 9,000,000
- sette: 8,000,000
- otto: 7,000,000

remaining population:
- distributed to smaller cities, towns, villages, and rural zones


# ============================================================
# 3. NOVA COMMERCIAL FEDERATION
# ============================================================

- center_commercial_city: 55,000,000
- asic_city: 35,000,000
- gold_city: 20,000,000
- bad_drunk: 14,000,000
- silver_gate: 12,000,000
- cloud_city: 13,000,000
- north_port: 11,000,000
- south_gate: 10,000,000
- lumina: 9,000,000
- market_hill: 8,000,000

remaining population:
- distributed to asic_employee_residential_zones,
  metro-support cities, secondary markets,
  and dense suburban-commercial belts


# ============================================================
# 4. SEIWA STATE
# ============================================================

- kyo: 30,000,000
- aomine: 18,000,000
- kamihiryo: 14,000,000
- higashi_kakona: 13,000,000
- nishi_keihin: 11,000,000
- minami_kiyohara: 9,000,000
- tetsuo: 10,000,000
- shin_seigaku: 8,000,000
- kita_seihama: 9,000,000
- gakuto_shirasagi: 7,000,000

remaining population:
- distributed to smaller agricultural, residential, and regional cities


# ============================================================
# 5. GLADIA MILITARY ALLIANCE
# ============================================================

- third_base: 24,000,000
- first_port_base: 15,000,000
- second_base: 13,000,000
- fourth_port_base: 13,000,000
- west_border_line: 10,000,000
- fifth_arsenal_zone: 12,000,000
- east_logistics_city: 10,000,000
- south_armor_city: 9,000,000
- north_training_zone: 8,000,000

remaining population:
- distributed to supporting military-industrial belts,
  service settlements, family housing zones,
  and secondary defense corridors


# ============================================================
# 6. ORPHEUS OCEANIC UNION
# ============================================================

- ye_moja: 18,000,000
- ye_elewa: 12,000,000
- ye_salima: 8,000,000
- ye_tuba: 7,000,000
- ye_kara: 6,000,000
- ye_noa: 5,000,000

remaining population:
- distributed to coastal settlements, fisheries towns, and island communities


# ============================================================
# 7. AURELIA FEDERAL REPUBLIC
# ============================================================

current_runtime_city_population_reference:
- svyat_mikhail: 7,000,000
- ivanomolorsk: 5,000,000
- zheleznograd: 6,000,000
- blagovest: 5,000,000
- kamengrad: 3,000,000

historical_city_population_reference:
- svyat_mikhail: 14,000,000
- ivanomolorsk: 9,000,000
- zheleznograd: 10,000,000
- blagovest: 8,000,000
- kamengrad: 6,000,000

remaining current runtime population:
- distributed to fragmented residual settlements
  and unstable post-dismantling territories


# ============================================================
# 8. FREE CITIES UNION
# ============================================================

- liberta: 12,000,000
- freedal: 8,000,000
- autonova: 7,000,000
- liberos: 10,000,000
- freiheim: 6,000,000
- sovoda: 6,000,000
- azadia: 8,000,000
- eleusa: 7,000,000
- nondomina: 6,000,000
- opena: 7,000,000
- concordia: 8,000,000
- selefa: 5,000,000

remaining population:
- distributed to satellite wards, smaller autonomous districts,
  shared trade corridors, and peripheral civic settlements


# ============================================================
# 9. FINAL RULE
# ============================================================

Major city population is a corrected seed baseline
and may be refined later by more detailed city models,
but should remain directionally stable.
