# ============================================================
# INITIAL COMPANY SEED MODEL
# ============================================================

status: canonical
layer: model
scope: initial-company-and-housing-seed
component: initial-company-seed

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines initial company seed posture
for major nations and cities.


# ============================================================
# 2. HELIOS DEMOCRATIC KINGDOM
# ============================================================

anchor_company_types:
- construction_company_presence_high
- manufacturing_presence_high
- software_presence_medium
- retail_presence_medium
- logistics_presence_high
- research_company_presence_medium_high

city_tendency:
- helios_city: state_research_industry_mixed
- cinque: heavy_industry_anchor
- quattro: resource_anchor
- sette: frontier_growth_anchor


# ============================================================
# 3. NOVA COMMERCIAL FEDERATION
# ============================================================

anchor_company_types:
- finance_presence_very_high
- securities_presence_very_high
- software_presence_high
- retail_presence_very_high
- investment_company_presence_high
- international_top_firm_presence_very_high

city_tendency:
- center_commercial_city: market_and_finance_anchor
- asic_city: ai_and_enterprise_anchor
- gold_city: wealth_and_finance_anchor
- north_port: trade_and_logistics_anchor
- market_hill: startup_and_growth_anchor


# ============================================================
# 4. SEIWA STATE
# ============================================================

anchor_company_types:
- education_presence_very_high
- construction_presence_high
- manufacturing_presence_high
- rail_and_logistics_presence_very_high
- agriculture_support_presence_high
- retail_presence_medium

city_tendency:
- kyo: government_education_anchor
- tetsuo: railway_anchor
- gakuto_shirasagi: higher_education_anchor
- minami_kiyohara: agriculture_support_anchor


# ============================================================
# 5. GLADIA MILITARY ALLIANCE
# ============================================================

anchor_company_types:
- manufacturing_presence_high
- automotive_presence_high
- security_contract_presence_high
- mercenary_services_presence_high
- logistics_presence_high
- retail_presence_low_to_medium

city_tendency:
- third_base: command_and_control_anchor
- fifth_arsenal_zone: armament_anchor
- east_logistics_city: military_logistics_anchor
- north_training_zone: training_anchor


# ============================================================
# 6. ORPHEUS OCEANIC UNION
# ============================================================

anchor_company_types:
- fishery_presence_high
- brewing_presence_high
- tourism_presence_medium_high
- culture_arts_presence_medium
- retail_presence_medium
- small_craft_presence_high

city_tendency:
- ye_moja: union_port_anchor
- ye_salima: brewing_anchor
- ye_elewa: fishery_anchor
- ye_tuba: ritual_festival_anchor


# ============================================================
# 7. AURELIA FEDERAL REPUBLIC
# ============================================================

runtime_posture:
- degraded
- fragmented
- historical_reference_heavy

anchor_company_types:
- state_controlled_market_presence_historical
- firearms_legacy_presence_historical
- fishery_presence_residual
- correctional_institution_presence_historical
- religious_institution_presence_historical

city_tendency:
- svyat_mikhail: doctrinal_historical_anchor
- zheleznograd: arms_legacy_anchor
- kamengrad: correctional_legacy_anchor


# ============================================================
# 8. FREE CITIES UNION
# ============================================================

anchor_company_types:
- retail_presence_high
- urban_craft_presence_high
- port_trade_presence_high
- small_scale_manufacturing_presence_medium
- culture_presence_medium
- service_presence_high

city_tendency:
- liberta: civic_trade_anchor
- liberos: trade_anchor
- freedal: port_anchor
- concordia: mediation_and_service_anchor
- sovoda: labor_and_craft_anchor


# ============================================================
# 9. FINAL RULE
# ============================================================

Initial company seed should define economic identity
without requiring full per-building entity instantiation.
