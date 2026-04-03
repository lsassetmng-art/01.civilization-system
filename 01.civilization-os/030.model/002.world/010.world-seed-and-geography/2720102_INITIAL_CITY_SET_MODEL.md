# ============================================================
# INITIAL CITY SET MODEL
# ============================================================

status: canonical
layer: model
scope: initial-nation-and-city-set
component: initial-city-set

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the expanded initial city set
for major nations.


# ============================================================
# 2. AURELIA FEDERAL REPUBLIC
# ============================================================

runtime_state:
- dismantled_historical_state

historical_cities:
- svyat_mikhail
- ivanomolorsk
- zheleznograd
- blagovest
- kamengrad

city_roles:
- svyat_mikhail: former_capital / religious_administrative_core
- ivanomolorsk: former_port_city
- zheleznograd: former_industrial_and_arms_city
- blagovest: religious_and_ritual_city
- kamengrad: prison_and_correction_city


# ============================================================
# 3. FREE CITIES UNION
# ============================================================

governance_model:
- city_representative_council
- no_permanent_supreme_leader

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

city_role_hints:
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
- selefa: self-rule_community_city


# ============================================================
# 4. FINAL RULE
# ============================================================

Expanded city sets should preserve both symbolic identity
and seed-world functional realism.
