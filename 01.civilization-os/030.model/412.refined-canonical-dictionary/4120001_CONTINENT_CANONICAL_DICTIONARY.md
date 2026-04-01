# ============================================================
# CONTINENT CANONICAL DICTIONARY
# ============================================================

status: canonical
source: extracted-and-normalized from continent candidates
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: NORTH_CONTINENT
  display_name_ja: 北大陸
  display_name_en: NORTH CONTINENT
  description_ja: 工業・資源・生産基盤が強い寒冷寄りの大陸。
  description_en: A colder continent with strong industry, resources, and production capacity.
  climate_profile: cold_industrial_resource
  resource_profile: industrial_resource_rich
  civilization_profile: production_heavy
  status: canonical

- code: CENTRAL_CONTINENT
  display_name_ja: 中央大陸
  display_name_en: CENTRAL CONTINENT
  description_ja: 商業・行政・教育・中核機能が集まる世界の中心大陸。
  description_en: The central continent of the world, concentrated with commerce, administration, education, and core functions.
  climate_profile: balanced_core
  resource_profile: balanced_mixed
  civilization_profile: commercial_administrative_core
  status: canonical

- code: SOUTH_CONTINENT
  display_name_ja: 南大陸
  display_name_en: SOUTH CONTINENT
  description_ja: 海洋性・文化性・交易性が強い温暖寄りの大陸。
  description_en: A warmer maritime continent with strong culture, trade, and oceanic character.
  climate_profile: warm_maritime_cultural
  resource_profile: maritime_cultural_trade
  civilization_profile: culture_trade_maritime
  status: canonical

# ============================================================
# NORMALIZATION RULE
# ============================================================

- NORTHERN_CONTINENT is normalized to NORTH_CONTINENT
- SOUTHERN_CONTINENT is normalized to SOUTH_CONTINENT
