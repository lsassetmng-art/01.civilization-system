# ============================================================
# FACILITY CITY PERSON COMPANY AND STATE INSTITUTION DICTIONARY VERIFIED FULL
# ============================================================

status: canonical_bundle
prepared_by: Zero
bundle_scope:
- geography
- city
- facility_type
- infrastructure_type
- person
- company
- state_institution
- education
- medical
- admin_port_rail
- public_space_market
- security_correction
- legal_judicial
- religious


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/412.refined-canonical-dictionary/4120001_CONTINENT_CANONICAL_DICTIONARY.md
# ============================================================

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


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/412.refined-canonical-dictionary/4120002_FACILITY_TYPE_CANONICAL_DICTIONARY.md
# ============================================================

# ============================================================
# FACILITY TYPE CANONICAL DICTIONARY
# ============================================================

status: canonical_draft
source: facility-ui canonical design
prepared_by: Zero

# ============================================================
# ENTRY CANDIDATES
# ============================================================

- code: COMMERCIAL
  display_name: COMMERCIAL
  status: review_required

- code: RESIDENTIAL
  display_name: RESIDENTIAL
  status: review_required

- code: REAL_ESTATE
  display_name: REAL_ESTATE
  status: review_required

- code: STREAMER_AGENCY
  display_name: STREAMER_AGENCY
  status: review_required

- code: AGRICULTURE
  display_name: AGRICULTURE
  status: review_required

- code: LIVESTOCK
  display_name: LIVESTOCK
  status: review_required

- code: FOOD_SERVICE
  display_name: FOOD_SERVICE
  status: review_required

- code: FINANCE
  display_name: FINANCE
  status: review_required

- code: SECURITIES
  display_name: SECURITIES
  status: review_required

- code: INFRASTRUCTURE
  display_name: INFRASTRUCTURE
  status: review_required

- code: LODGING
  display_name: LODGING
  status: review_required

- code: RESEARCH_TECH
  display_name: RESEARCH_TECH
  status: review_required

- code: CULTURE_LEISURE
  display_name: CULTURE_LEISURE
  status: review_required

- code: COMMUNITY_SUPPORT
  display_name: COMMUNITY_SUPPORT
  status: review_required

- code: ADMINISTRATIVE_SERVICE

- code: CORRECTION
  display_name_ja: 矯正施設
  display_name_en: CORRECTION
  description_ja: 更生、収容、拘禁、矯正処遇を担う施設種別。
  description_en: A facility type for correction, detention, confinement, and rehabilitative custody.
  status: canonical
  display_name: ADMINISTRATIVE_SERVICE
  status: review_required

- code: POLICE
  display_name: POLICE
  status: review_required

- code: FIRE_RESCUE
  display_name: FIRE_RESCUE
  status: review_required

- code: JUDICIAL
  display_name: JUDICIAL
  status: review_required

- code: MILITARY
  display_name: MILITARY
  status: review_required

- code: SCHOOL
  display_name: SCHOOL
  status: review_required

- code: HOSPITAL
  display_name: HOSPITAL
  status: review_required

- code: MARKET
  display_name: MARKET
  status: review_required

- code: WAREHOUSING
  display_name: WAREHOUSING
  status: review_required


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/412.refined-canonical-dictionary/4120004_INFRASTRUCTURE_TYPE_CANONICAL_DICTIONARY.md
# ============================================================

# ============================================================
# INFRASTRUCTURE TYPE CANONICAL DICTIONARY
# ============================================================

status: canonical
source: extracted-and-normalized from infrastructure candidates
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: NETWORK_INFRASTRUCTURE
  display_name_ja: ネットワーク基盤
  display_name_en: NETWORK INFRASTRUCTURE
  description_ja: 通信接続、ネットワーク到達性、回線接続を担うインフラ種別。
  description_en: An infrastructure type for communication connectivity, network reachability, and line connections.
  status: canonical

- code: COMPUTE_INFRASTRUCTURE
  display_name_ja: 計算基盤
  display_name_en: COMPUTE INFRASTRUCTURE
  description_ja: 計算資源、実行環境、処理能力を提供するインフラ種別。
  description_en: An infrastructure type that provides compute resources, execution environments, and processing capacity.
  status: canonical

- code: STORAGE_INFRASTRUCTURE
  display_name_ja: ストレージ基盤
  display_name_en: STORAGE INFRASTRUCTURE
  description_ja: データ保存、ファイル保持、長期保管を担うインフラ種別。
  description_en: An infrastructure type for data storage, file retention, and long-term persistence.
  status: canonical

- code: DATABASE_INFRASTRUCTURE
  display_name_ja: データベース基盤
  display_name_en: DATABASE INFRASTRUCTURE
  description_ja: 構造化データ管理、検索、整合性維持を担うインフラ種別。
  description_en: An infrastructure type for structured data management, querying, and consistency maintenance.
  status: canonical

- code: SECURITY_INFRASTRUCTURE
  display_name_ja: セキュリティ基盤
  display_name_en: SECURITY INFRASTRUCTURE
  description_ja: 保護、認証、制御、脅威対策を担うインフラ種別。
  description_en: An infrastructure type for protection, authentication, control, and threat defense.
  status: canonical

- code: OBSERVABILITY_INFRASTRUCTURE
  display_name_ja: 監視観測基盤
  display_name_en: OBSERVABILITY INFRASTRUCTURE
  description_ja: 監視、可観測性、記録、異常把握を担うインフラ種別。
  description_en: An infrastructure type for monitoring, observability, recording, and anomaly visibility.
  status: canonical

- code: DEPLOYMENT_INFRASTRUCTURE
  display_name_ja: 配備基盤
  display_name_en: DEPLOYMENT INFRASTRUCTURE
  description_ja: 配布、配置、更新、反映を担うインフラ種別。
  description_en: An infrastructure type for distribution, deployment, updates, and rollout.
  status: canonical

- code: BACKUP_INFRASTRUCTURE
  display_name_ja: バックアップ基盤
  display_name_en: BACKUP INFRASTRUCTURE
  description_ja: 退避、複製、保全、復元準備を担うインフラ種別。
  description_en: An infrastructure type for backup, replication, preservation, and restore readiness.
  status: canonical

- code: DISASTER_RECOVERY_INFRASTRUCTURE
  display_name_ja: 災害復旧基盤
  display_name_en: DISASTER RECOVERY INFRASTRUCTURE
  description_ja: 障害時の復旧、代替運用、継続確保を担うインフラ種別。
  description_en: An infrastructure type for disaster recovery, fallback operation, and continuity assurance.
  status: canonical

# ============================================================
# NOTE
# ============================================================

This dictionary defines infrastructure types.
Specific seeded infrastructure entities must be managed separately
in an initial infrastructure dictionary.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/412.refined-canonical-dictionary/4120005_WORLD_INFRASTRUCTURE_TYPE_CANONICAL_DICTIONARY.md
# ============================================================

# ============================================================
# WORLD INFRASTRUCTURE TYPE CANONICAL DICTIONARY
# ============================================================

status: canonical
source: world infrastructure canonical design
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: ROAD
  display_name_ja: 道路インフラ
  display_name_en: ROAD
  description_ja: 都市・国家・施設間の陸上移動と物流を支える道路系インフラ。
  description_en: Road infrastructure supporting land movement and logistics between cities, states, and facilities.
  status: canonical

- code: RAILWAY
  display_name_ja: 鉄道インフラ
  display_name_en: RAILWAY
  description_ja: 大量輸送、都市間接続、旅客・貨物輸送を支える鉄道系インフラ。
  description_en: Railway infrastructure supporting mass transit, intercity connection, and passenger/freight transport.
  status: canonical

- code: PORT
  display_name_ja: 港湾インフラ
  display_name_en: PORT
  description_ja: 海上物流、港湾積み下ろし、海路接続を支える港湾系インフラ。
  description_en: Port infrastructure supporting maritime logistics, loading operations, and sea-route connectivity.
  status: canonical

- code: AIRPORT
  display_name_ja: 空港インフラ
  display_name_en: AIRPORT
  description_ja: 航空輸送、空路接続、旅客・貨物航空機能を支える空港系インフラ。
  description_en: Airport infrastructure supporting air transport, air-route connectivity, and passenger/cargo aviation functions.
  status: canonical

- code: POWER
  display_name_ja: 電力インフラ
  display_name_en: POWER
  description_ja: 発電、送電、配電を通じて電力供給を担うインフラ。
  description_en: Infrastructure for power generation, transmission, and distribution.
  status: canonical

- code: WATER_SUPPLY
  display_name_ja: 水道インフラ
  display_name_en: WATER SUPPLY
  description_ja: 生活用水・産業用水の供給を担う上水系インフラ。
  description_en: Water-supply infrastructure providing domestic and industrial water.
  status: canonical

- code: SEWERAGE
  display_name_ja: 下水インフラ
  display_name_en: SEWERAGE
  description_ja: 排水処理、汚水回収、衛生維持を担う下水系インフラ。
  description_en: Sewer infrastructure for wastewater collection, drainage, and sanitation maintenance.
  status: canonical

- code: GAS
  display_name_ja: ガスインフラ
  display_name_en: GAS
  description_ja: 燃料供給、都市ガス供給、熱源供給を担うガス系インフラ。
  description_en: Gas infrastructure for fuel supply, city-gas distribution, and heat-source provision.
  status: canonical

- code: TELECOMMUNICATION
  display_name_ja: 通信インフラ
  display_name_en: TELECOMMUNICATION
  description_ja: 音声通信、データ通信、情報接続を支える通信系インフラ。
  description_en: Telecommunications infrastructure supporting voice, data, and information connectivity.
  status: canonical

- code: LOGISTICS
  display_name_ja: 物流インフラ
  display_name_en: LOGISTICS
  description_ja: 倉配送、物流拠点接続、中継と流通効率を支える物流系インフラ。
  description_en: Logistics infrastructure supporting warehousing, delivery networks, relay points, and distribution efficiency.
  status: canonical

- code: BROADCAST
  display_name_ja: 放送インフラ
  display_name_en: BROADCAST
  description_ja: 音声・映像・公共情報の広域配信を支える放送系インフラ。
  description_en: Broadcast infrastructure supporting wide-area distribution of audio, video, and public information.
  status: canonical

- code: FLOOD_CONTROL
  display_name_ja: 治水インフラ
  display_name_en: FLOOD CONTROL
  description_ja: 洪水対策、排水制御、水害軽減を担う治水系インフラ。
  description_en: Flood-control infrastructure for drainage control, flood mitigation, and water-disaster reduction.
  status: canonical

- code: WASTE_MANAGEMENT
  display_name_ja: 廃棄物処理インフラ
  display_name_en: WASTE MANAGEMENT
  description_ja: ごみ収集、廃棄物処理、衛生循環を担う廃棄物系インフラ。
  description_en: Waste-management infrastructure for garbage collection, waste treatment, and sanitation circulation.
  status: canonical

# ============================================================
# NOTE
# ============================================================

This dictionary defines world-facing infrastructure types
inside Civilization.

It is distinct from system infrastructure types such as:

- NETWORK_INFRASTRUCTURE
- COMPUTE_INFRASTRUCTURE
- STORAGE_INFRASTRUCTURE
- DATABASE_INFRASTRUCTURE
- SECURITY_INFRASTRUCTURE
- OBSERVABILITY_INFRASTRUCTURE
- DEPLOYMENT_INFRASTRUCTURE
- BACKUP_INFRASTRUCTURE
- DISASTER_RECOVERY_INFRASTRUCTURE


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/413.foundation-7states-canonical-dictionary/4130001_STATE_CANONICAL_DICTIONARY.md
# ============================================================

# ============================================================
# STATE CANONICAL DICTIONARY
# ============================================================

status: canonical
source: Foundation / 15_CIVILIZATION_7_STATES_JP.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: HELIOS_DEMOCRATIC_KINGDOM
  display_name_ja: ヘリオス民主王国
  display_name_en: HELIOS DEMOCRATIC KINGDOM
  capital_city_code: HELIOS_CITY
  primary_industries_ja:
    - 資源
    - 工業
    - AI機械業
  founder_codes:
    - HELIOS_ROSSO
  status: canonical

- code: NOVA_COMMERCIAL_FEDERATION
  display_name_ja: ノヴァ商業連邦国
  display_name_en: NOVA COMMERCIAL FEDERATION
  capital_city_code: CENTER_COMMERCIAL_CITY
  primary_industries_ja:
    - 金融
    - AIコンピュータ
    - 貿易
  founder_codes:
    - ISAAC_COWEN
  notes_ja: 実質ASICが実権を握る。
  status: canonical

- code: SEIWA
  display_name_ja: 成和国
  display_name_en: SEIWA
  capital_city_code: MIYAKO
  primary_industries_ja:
    - 教育
    - 土木建設
    - 農業
    - 工業
    - 造船
    - 鉄道
  founder_codes:
    - NINOMIYA_SANSHO
    - HONDA_AKIRA
    - NIJIMA_SHIGEO
  status: canonical

- code: GLADIA_MILITARY_ALLIANCE
  display_name_ja: グラディア軍事同盟
  display_name_en: GLADIA MILITARY ALLIANCE
  capital_city_code: THIRD_BASE
  primary_industries_ja:
    - 自動車
    - 銃火器
    - 傭兵
  founder_codes:
    - JACK_DAVIS
  status: canonical

- code: ORPHEUS_MARITIME_UNION
  display_name_ja: オルフェウス海洋連合国
  display_name_en: ORPHEUS MARITIME UNION
  capital_city_code: YE_MOJA
  primary_industries_ja:
    - 酒造業
    - 漁業
  founder_codes:
    - IBRAHIM_ADEBAYO
    - KEVIN
    - JOACHIM
  status: canonical

- code: AURELIA_FEDERAL_REPUBLIC
  display_name_ja: アウレリア連邦共和国
  display_name_en: AURELIA FEDERAL REPUBLIC
  capital_city_code: AURELIA
  primary_industries_ja:
    - 漁業
    - 銃火器
  founder_codes:
    - MIKHAIL_IVANOV
  notes_ja: 現在は解体。
  status: canonical

- code: FREE_UNION
  display_name_ja: 自由連合国
  display_name_en: FREE UNION
  capital_city_code: TBD
  primary_industries_ja: []
  founder_codes: []
  notes_ja: 多民族国家群の連合体。特筆事項なし。
  status: canonical


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/413.foundation-7states-canonical-dictionary/4130002_CITY_CANONICAL_DICTIONARY.md
# ============================================================

# ============================================================
# CITY CANONICAL DICTIONARY
# ============================================================

status: canonical
source: Foundation / 15_CIVILIZATION_7_STATES_JP.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: HELIOS_CITY
  display_name_ja: ヘリオスシティ
  display_name_en: HELIOS CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  notes_ja: 首都。民主議会議事堂がある。
  status: canonical

- code: UNO
  display_name_ja: ウーノ
  display_name_en: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  notes_ja: 旧貴族街。現在は高級住宅街。
  status: canonical

- code: DUE
  display_name_ja: ドゥエ
  display_name_en: DUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  notes_ja: 旧一般街区。最大の住宅街で市場がある。
  status: canonical

- code: TRE
  display_name_ja: トレ
  display_name_en: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  notes_ja: 旧貧民街区。現在は工業地区。ロボット開発特化地域。
  status: canonical

- code: CENTER_COMMERCIAL_CITY
  display_name_ja: センター商業シティ
  display_name_en: CENTER COMMERCIAL CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  notes_ja: Civilization経済の中心都市。
  status: canonical

- code: ASIC_CITY
  display_name_ja: ASICシティ
  display_name_en: ASIC CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  notes_ja: ASIC本社がある都市。
  status: canonical

- code: GOLD_CITY
  display_name_ja: ゴールドシティ
  display_name_en: GOLD CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  notes_ja: 金融企業が集まる都市。
  status: canonical

- code: BAD_DRUNK
  display_name_ja: バッドドランク
  display_name_en: BAD DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  notes_ja: 飲み屋街。
  status: canonical

- code: MIYAKO
  display_name_ja: 京
  display_name_en: MIYAKO
  state_code: SEIWA
  notes_ja: 議事堂がある政治都市。
  status: canonical

- code: AOMINE
  display_name_ja: 青峰
  display_name_en: AOMINE
  state_code: SEIWA
  notes_ja: 海岸北部の山岳都市。
  status: canonical

- code: KAMIHEIJO
  display_name_ja: 上平壌
  display_name_en: KAMIHEIJO
  state_code: SEIWA
  notes_ja: 軍事訓練用広大地域。
  status: canonical

- code: HIGASHI_KAKONA
  display_name_ja: 東加古奈
  display_name_en: HIGASHI KAKONA
  state_code: SEIWA
  notes_ja: 市場都市。
  status: canonical

- code: THIRD_BASE
  display_name_ja: 第三基地
  display_name_en: THIRD BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  notes_ja: 中央基地。観光地でもある。
  status: canonical

- code: FIRST_PORT_BASE
  display_name_ja: 第一港湾基地
  display_name_en: FIRST PORT BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  notes_ja: ヘリオス交易基地。
  status: canonical

- code: SECOND_BASE
  display_name_ja: 第二基地
  display_name_en: SECOND BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  notes_ja: 傭兵部隊基地。
  status: canonical

- code: FOURTH_PORT_BASE
  display_name_ja: 第四港湾基地
  display_name_en: FOURTH PORT BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  notes_ja: 南大陸交易基地。
  status: canonical

- code: WEST_BORDER_LINE
  display_name_ja: 西国境線
  display_name_en: WEST BORDER LINE
  state_code: GLADIA_MILITARY_ALLIANCE
  notes_ja: 成和国との国境。
  status: canonical

- code: YE_MOJA
  display_name_ja: イェ・モジャ
  display_name_en: YE MOJA
  state_code: ORPHEUS_MARITIME_UNION
  notes_ja: 首都。海の女神像がある。
  status: canonical

- code: YE_EREWWA
  display_name_ja: イェ・エレッワ
  display_name_en: YE EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  notes_ja: 最大酒造工場都市。
  status: canonical

- code: AURELIA
  display_name_ja: アウレリア
  display_name_en: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  notes_ja: 唯一の都市。
  status: canonical


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/413.foundation-7states-canonical-dictionary/4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
# ============================================================

# ============================================================
# CITY CANONICAL DICTIONARY EXPANDED
# ============================================================

status: canonical
source:
- Foundation / 15_CIVILIZATION_7_STATES_JP.md
- INITIAL CITY SET MODEL
- INITIAL MAJOR CITY POPULATION MODEL
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: HELIOS_CITY
  display_name_ja: ヘリオスシティ
  display_name_en: HELIOS CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: 首都。民主議会議事堂がある。
  population_seed: 40000000
  status: canonical

- code: UNO
  display_name_ja: ウーノ
  display_name_en: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: 旧貴族街。現在は高級住宅街。
  population_seed: 18000000
  status: canonical

- code: DUE
  display_name_ja: ドゥエ
  display_name_en: DUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: 旧一般街区。最大の住宅街で市場がある。
  population_seed: 15000000
  status: canonical

- code: TRE
  display_name_ja: トレ
  display_name_en: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: 旧貧民街区。現在は工業地区。ロボット開発特化地域。
  population_seed: 14000000
  status: canonical

- code: QUATTRO
  display_name_ja: クアトロ
  display_name_en: QUATTRO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: ヘリオス主要都市の一つ。
  population_seed: 10000000
  status: canonical

- code: CINQUE
  display_name_ja: チンクエ
  display_name_en: CINQUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: ヘリオス主要都市の一つ。
  population_seed: 12000000
  status: canonical

- code: SEI
  display_name_ja: セイ
  display_name_en: SEI
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: ヘリオス主要都市の一つ。
  population_seed: 9000000
  status: canonical

- code: SETTE
  display_name_ja: セッテ
  display_name_en: SETTE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: ヘリオス主要都市の一つ。
  population_seed: 8000000
  status: canonical

- code: OTTO
  display_name_ja: オット
  display_name_en: OTTO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  description_ja: ヘリオス主要都市の一つ。
  population_seed: 7000000
  status: canonical

- code: CENTER_COMMERCIAL_CITY
  display_name_ja: センター商業シティ
  display_name_en: CENTER COMMERCIAL CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: Civilization経済の中心都市。
  population_seed: 55000000
  status: canonical

- code: ASIC_CITY
  display_name_ja: ASICシティ
  display_name_en: ASIC CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ASIC本社がある都市。
  population_seed: 35000000
  status: canonical

- code: GOLD_CITY
  display_name_ja: ゴールドシティ
  display_name_en: GOLD CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: 金融企業が集まる都市。
  population_seed: 20000000
  status: canonical

- code: BAD_DRUNK
  display_name_ja: バッドドランク
  display_name_en: BAD DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: 飲み屋街。
  population_seed: 14000000
  status: canonical

- code: SILVER_GATE
  display_name_ja: シルバーゲート
  display_name_en: SILVER GATE
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ主要都市の一つ。
  population_seed: 12000000
  status: canonical

- code: CLOUD_CITY
  display_name_ja: クラウドシティ
  display_name_en: CLOUD CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ主要都市の一つ。
  population_seed: 13000000
  status: canonical

- code: NORTH_PORT
  display_name_ja: 北港湾都市
  display_name_en: NORTH PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ北方港湾圏の主要都市。
  population_seed: 11000000
  status: canonical

- code: SOUTH_GATE
  display_name_ja: サウスゲート
  display_name_en: SOUTH GATE
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ主要都市の一つ。
  population_seed: 10000000
  status: canonical

- code: LUMINA
  display_name_ja: ルミナ
  display_name_en: LUMINA
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ主要都市の一つ。
  population_seed: 9000000
  status: canonical

- code: MARKET_HILL
  display_name_ja: マーケットヒル
  display_name_en: MARKET HILL
  state_code: NOVA_COMMERCIAL_FEDERATION
  description_ja: ノヴァ主要都市の一つ。
  population_seed: 8000000
  status: canonical

- code: MIYAKO
  display_name_ja: 京
  display_name_en: MIYAKO
  state_code: SEIWA
  description_ja: 議事堂がある政治都市。
  population_seed: 30000000
  status: canonical

- code: AOMINE
  display_name_ja: 青峰
  display_name_en: AOMINE
  state_code: SEIWA
  description_ja: 海岸北部の山岳都市。
  population_seed: 18000000
  status: canonical

- code: KAMIHEIJO
  display_name_ja: 上平壌
  display_name_en: KAMIHEIJO
  state_code: SEIWA
  description_ja: 軍事訓練用広大地域。
  population_seed: 14000000
  status: canonical

- code: HIGASHI_KAKONA
  display_name_ja: 東加古奈
  display_name_en: HIGASHI KAKONA
  state_code: SEIWA
  description_ja: 市場都市。
  population_seed: 13000000
  status: canonical

- code: NISHI_KEIHIN
  display_name_ja: 西京浜
  display_name_en: NISHI KEIHIN
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 11000000
  status: canonical

- code: MINAMI_KIYOHARA
  display_name_ja: 南清原
  display_name_en: MINAMI KIYOHARA
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 9000000
  status: canonical

- code: TETSUO
  display_name_ja: テツオ
  display_name_en: TETSUO
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 10000000
  status: canonical

- code: SHIN_SEIGAKU
  display_name_ja: 新成学
  display_name_en: SHIN SEIGAKU
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 8000000
  status: canonical

- code: KITA_SEIHAMA
  display_name_ja: 北成浜
  display_name_en: KITA SEIHAMA
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 9000000
  status: canonical

- code: GAKUTO_SHIRASAGI
  display_name_ja: 学都白鷺
  display_name_en: GAKUTO SHIRASAGI
  state_code: SEIWA
  description_ja: 成和主要都市の一つ。
  population_seed: 7000000
  status: canonical

- code: THIRD_BASE
  display_name_ja: 第三基地
  display_name_en: THIRD BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: 中央基地。観光地でもある。
  population_seed: 24000000
  status: canonical

- code: FIRST_PORT_BASE
  display_name_ja: 第一港湾基地
  display_name_en: FIRST PORT BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: ヘリオス交易基地。
  population_seed: 15000000
  status: canonical

- code: SECOND_BASE
  display_name_ja: 第二基地
  display_name_en: SECOND BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: 傭兵部隊基地。
  population_seed: 13000000
  status: canonical

- code: FOURTH_PORT_BASE
  display_name_ja: 第四港湾基地
  display_name_en: FOURTH PORT BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: 南大陸交易基地。
  population_seed: 13000000
  status: canonical

- code: WEST_BORDER_LINE
  display_name_ja: 西国境線
  display_name_en: WEST BORDER LINE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: 成和国との国境。
  population_seed: 10000000
  status: canonical

- code: FIFTH_ARSENAL_ZONE
  display_name_ja: 第五兵站工廠区
  display_name_en: FIFTH ARSENAL ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: グラディア主要都市の一つ。
  population_seed: 12000000
  status: canonical

- code: EAST_LOGISTICS_CITY
  display_name_ja: 東物流都市
  display_name_en: EAST LOGISTICS CITY
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: グラディア主要都市の一つ。
  population_seed: 10000000
  status: canonical

- code: SOUTH_ARMOR_CITY
  display_name_ja: 南機甲都市
  display_name_en: SOUTH ARMOR CITY
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: グラディア主要都市の一つ。
  population_seed: 9000000
  status: canonical

- code: NORTH_TRAINING_ZONE
  display_name_ja: 北訓練区
  display_name_en: NORTH TRAINING ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  description_ja: グラディア主要都市の一つ。
  population_seed: 8000000
  status: canonical

- code: YE_MOJA
  display_name_ja: イェ・モジャ
  display_name_en: YE MOJA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: 首都。海の女神像がある。
  population_seed: 18000000
  status: canonical

- code: YE_EREWWA
  display_name_ja: イェ・エレッワ
  display_name_en: YE EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: 最大酒造工場都市。
  population_seed: 12000000
  status: canonical

- code: YE_SALIMA
  display_name_ja: イェ・サリマ
  display_name_en: YE SALIMA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: オルフェウス主要都市の一つ。
  population_seed: 8000000
  status: canonical

- code: YE_TUBA
  display_name_ja: イェ・ツバ
  display_name_en: YE TUBA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: オルフェウス主要都市の一つ。
  population_seed: 7000000
  status: canonical

- code: YE_KARA
  display_name_ja: イェ・カラ
  display_name_en: YE KARA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: オルフェウス主要都市の一つ。
  population_seed: 6000000
  status: canonical

- code: YE_NOA
  display_name_ja: イェ・ノア
  display_name_en: YE NOA
  state_code: ORPHEUS_MARITIME_UNION
  description_ja: オルフェウス主要都市の一つ。
  population_seed: 5000000
  status: canonical

- code: AURELIA
  display_name_ja: アウレリア
  display_name_en: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: 唯一の都市。
  status: canonical

- code: SVYAT_MIKHAIL
  display_name_ja: スヴャト・ミハイル
  display_name_en: SVYAT MIKHAIL
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: former_capital / religious_administrative_core
  current_runtime_population_reference: 7000000
  historical_population_reference: 14000000
  status: canonical

- code: IVANOMOLOSK
  display_name_ja: イヴァノモロスク
  display_name_en: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: former_port_city
  current_runtime_population_reference: 5000000
  historical_population_reference: 9000000
  status: canonical

- code: ZHELEZNOGRAD
  display_name_ja: ジェレズノグラード
  display_name_en: ZHELEZNOGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: former_industrial_and_arms_city
  current_runtime_population_reference: 6000000
  historical_population_reference: 10000000
  status: canonical

- code: BLAGOVEST
  display_name_ja: ブラゴヴェスト
  display_name_en: BLAGOVEST
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: religious_and_ritual_city
  current_runtime_population_reference: 5000000
  historical_population_reference: 8000000
  status: canonical

- code: KAMENGRAD
  display_name_ja: カメングラード
  display_name_en: KAMENGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC
  description_ja: prison_and_correction_city
  current_runtime_population_reference: 3000000
  historical_population_reference: 6000000
  status: canonical

- code: LIBERTA
  display_name_ja: リベルタ
  display_name_en: LIBERTA
  state_code: FREE_UNION
  description_ja: council_city
  population_seed: 12000000
  status: canonical

- code: FREEDAL
  display_name_ja: フリーダル
  display_name_en: FREEDAL
  state_code: FREE_UNION
  description_ja: port_city
  population_seed: 8000000
  status: canonical

- code: AUTONOVA
  display_name_ja: オートノヴァ
  display_name_en: AUTONOVA
  state_code: FREE_UNION
  description_ja: civic_autonomy_city
  population_seed: 7000000
  status: canonical

- code: LIBEROS
  display_name_ja: リベロス
  display_name_en: LIBEROS
  state_code: FREE_UNION
  description_ja: trade_city
  population_seed: 10000000
  status: canonical

- code: FREIHEIM
  display_name_ja: フライハイム
  display_name_en: FREIHEIM
  state_code: FREE_UNION
  description_ja: residential_citizen_city
  population_seed: 6000000
  status: canonical

- code: SOVODA
  display_name_ja: ソヴォダ
  display_name_en: SOVODA
  state_code: FREE_UNION
  description_ja: labor_and_craft_city
  population_seed: 6000000
  status: canonical

- code: AZADIA
  display_name_ja: アザディア
  display_name_en: AZADIA
  state_code: FREE_UNION
  description_ja: culture_exchange_city
  population_seed: 8000000
  status: canonical

- code: ELEUSA
  display_name_ja: エレウサ
  display_name_en: ELEUSA
  state_code: FREE_UNION
  description_ja: academic_and_ideas_city
  population_seed: 7000000
  status: canonical

- code: NONDOMINA
  display_name_ja: ノンドミナ
  display_name_en: NONDOMINA
  state_code: FREE_UNION
  description_ja: defense_coordination_city
  population_seed: 6000000
  status: canonical

- code: OPENA
  display_name_ja: オープナ
  display_name_en: OPENA
  state_code: FREE_UNION
  description_ja: open_market_city
  population_seed: 7000000
  status: canonical

- code: CONCORDIA
  display_name_ja: コンコルディア
  display_name_en: CONCORDIA
  state_code: FREE_UNION
  description_ja: mediation_city
  population_seed: 8000000
  status: canonical

- code: SELEFA
  display_name_ja: セレファ
  display_name_en: SELEFA
  state_code: FREE_UNION
  description_ja: self-rule_community_city
  population_seed: 5000000
  status: canonical

# ============================================================
# NORMALIZATION NOTE
# ============================================================

- kamihiryo population entry is treated as KAMIHEIJO for now and requires later source review.
- ye_elewa population entry is merged into YE_EREWWA for now and requires later source review.
- FREE_UNION capital remains unresolved at state level, while official cities are defined here.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/421.dictionary-master-index/4210002_CITY_CODE_LOOKUP.md
# ============================================================

# ============================================================
# CITY CODE LOOKUP
# ============================================================

status: canonical
source:
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- display_name_key: helios_city
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: ヘリオスシティ
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: helios
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: uno
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: ウーノ
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: due
  city_code: DUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: ドゥエ
  city_code: DUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: tre
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: トレ
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: quattro
  city_code: QUATTRO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: クアトロ
  city_code: QUATTRO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: cinque
  city_code: CINQUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: チンクエ
  city_code: CINQUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: sei
  city_code: SEI
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: セイ
  city_code: SEI
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: sette
  city_code: SETTE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: セッテ
  city_code: SETTE
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: otto
  city_code: OTTO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: オット
  city_code: OTTO
  state_code: HELIOS_DEMOCRATIC_KINGDOM

- display_name_key: center_commercial_city
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: センター商業シティ
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: center commercial
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: asic_city
  city_code: ASIC_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: ASICシティ
  city_code: ASIC_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: asic
  city_code: ASIC_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: gold_city
  city_code: GOLD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: ゴールドシティ
  city_code: GOLD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: gold city
  city_code: GOLD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: bad_drunk
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: バッドドランク
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: bad drunk
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: silver_gate
  city_code: SILVER_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: シルバーゲート
  city_code: SILVER_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: cloud_city
  city_code: CLOUD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: クラウドシティ
  city_code: CLOUD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: north_port
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: 北港
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: 北港湾
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: north port
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: south_gate
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: サウスゲート
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: south harbor
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: lumina
  city_code: LUMINA
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: ルミナ
  city_code: LUMINA
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: market_hill
  city_code: MARKET_HILL
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: マーケットヒル
  city_code: MARKET_HILL
  state_code: NOVA_COMMERCIAL_FEDERATION

- display_name_key: kyo
  city_code: MIYAKO
  state_code: SEIWA

- display_name_key: miyako
  city_code: MIYAKO
  state_code: SEIWA

- display_name_key: 京
  city_code: MIYAKO
  state_code: SEIWA

- display_name_key: aomine
  city_code: AOMINE
  state_code: SEIWA

- display_name_key: 青峰
  city_code: AOMINE
  state_code: SEIWA

- display_name_key: seiho
  city_code: AOMINE
  state_code: SEIWA

- display_name_key: 清峰
  city_code: AOMINE
  state_code: SEIWA

- display_name_key: kamiheijo
  city_code: KAMIHEIJO
  state_code: SEIWA

- display_name_key: kamihiryo
  city_code: KAMIHEIJO
  state_code: SEIWA

- display_name_key: 上平壌
  city_code: KAMIHEIJO
  state_code: SEIWA

- display_name_key: higashi_kakona
  city_code: HIGASHI_KAKONA
  state_code: SEIWA

- display_name_key: 東加古奈
  city_code: HIGASHI_KAKONA
  state_code: SEIWA

- display_name_key: nishi_keihin
  city_code: NISHI_KEIHIN
  state_code: SEIWA

- display_name_key: 西京浜
  city_code: NISHI_KEIHIN
  state_code: SEIWA

- display_name_key: minami_kiyohara
  city_code: MINAMI_KIYOHARA
  state_code: SEIWA

- display_name_key: 南清原
  city_code: MINAMI_KIYOHARA
  state_code: SEIWA

- display_name_key: tetsuo
  city_code: TETSUO
  state_code: SEIWA

- display_name_key: 鉄央
  city_code: TETSUO
  state_code: SEIWA

- display_name_key: shin_seigaku
  city_code: SHIN_SEIGAKU
  state_code: SEIWA

- display_name_key: 新成学
  city_code: SHIN_SEIGAKU
  state_code: SEIWA

- display_name_key: kita_seihama
  city_code: KITA_SEIHAMA
  state_code: SEIWA

- display_name_key: 北成浜
  city_code: KITA_SEIHAMA
  state_code: SEIWA

- display_name_key: gakuto_shirasagi
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA

- display_name_key: 学都白鷺
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA

- display_name_key: 白鷺
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA

- display_name_key: 白鷺学都
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA

- display_name_key: third_base
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 第三基地
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: first_port_base
  city_code: FIRST_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 第一港湾基地
  city_code: FIRST_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: second_base
  city_code: SECOND_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 第二基地
  city_code: SECOND_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: fourth_port_base
  city_code: FOURTH_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 第四港湾基地
  city_code: FOURTH_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: west_border_line
  city_code: WEST_BORDER_LINE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 西国境線
  city_code: WEST_BORDER_LINE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: fifth_arsenal_zone
  city_code: FIFTH_ARSENAL_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 第五兵站工廠区
  city_code: FIFTH_ARSENAL_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: east_logistics_city
  city_code: EAST_LOGISTICS_CITY
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 東物流都市
  city_code: EAST_LOGISTICS_CITY
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: south_armor_city
  city_code: SOUTH_ARMOR_CITY
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 南機甲都市
  city_code: SOUTH_ARMOR_CITY
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: north_training_zone
  city_code: NORTH_TRAINING_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: 北訓練区
  city_code: NORTH_TRAINING_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE

- display_name_key: ye_moja
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・モジャ
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: moja
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_elewa
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_erewwa
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・エレッワ
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: elewa
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_salima
  city_code: YE_SALIMA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・サリマ
  city_code: YE_SALIMA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: salima
  city_code: YE_SALIMA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_tuba
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・ツバ
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: tuba
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_kara
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・カラ
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: kara
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: ye_noa
  city_code: YE_NOA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: イェ・ノア
  city_code: YE_NOA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: noa
  city_code: YE_NOA
  state_code: ORPHEUS_MARITIME_UNION

- display_name_key: aurelia
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: アウレリア
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: svyat_mikhail
  city_code: SVYAT_MIKHAIL
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: スヴャト・ミハイル
  city_code: SVYAT_MIKHAIL
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: ivanomolorsk
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: イヴァノモロスク
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: ivanomolosk
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: zheleznograd
  city_code: ZHELEZNOGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: ジェレズノグラード
  city_code: ZHELEZNOGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: blagovest
  city_code: BLAGOVEST
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: ブラゴヴェスト
  city_code: BLAGOVEST
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: kamengrad
  city_code: KAMENGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: カメングラード
  city_code: KAMENGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC

- display_name_key: liberta
  city_code: LIBERTA
  state_code: FREE_UNION

- display_name_key: リベルタ
  city_code: LIBERTA
  state_code: FREE_UNION

- display_name_key: freedal
  city_code: FREEDAL
  state_code: FREE_UNION

- display_name_key: フリーダル
  city_code: FREEDAL
  state_code: FREE_UNION

- display_name_key: autonova
  city_code: AUTONOVA
  state_code: FREE_UNION

- display_name_key: オートノヴァ
  city_code: AUTONOVA
  state_code: FREE_UNION

- display_name_key: liberos
  city_code: LIBEROS
  state_code: FREE_UNION

- display_name_key: リベロス
  city_code: LIBEROS
  state_code: FREE_UNION

- display_name_key: freiheim
  city_code: FREIHEIM
  state_code: FREE_UNION

- display_name_key: フライハイム
  city_code: FREIHEIM
  state_code: FREE_UNION

- display_name_key: sovoda
  city_code: SOVODA
  state_code: FREE_UNION

- display_name_key: ソヴォダ
  city_code: SOVODA
  state_code: FREE_UNION

- display_name_key: azadia
  city_code: AZADIA
  state_code: FREE_UNION

- display_name_key: アザディア
  city_code: AZADIA
  state_code: FREE_UNION

- display_name_key: eleusa
  city_code: ELEUSA
  state_code: FREE_UNION

- display_name_key: エレウサ
  city_code: ELEUSA
  state_code: FREE_UNION

- display_name_key: nondomina
  city_code: NONDOMINA
  state_code: FREE_UNION

- display_name_key: ノンドミナ
  city_code: NONDOMINA
  state_code: FREE_UNION

- display_name_key: opena
  city_code: OPENA
  state_code: FREE_UNION

- display_name_key: オープナ
  city_code: OPENA
  state_code: FREE_UNION

- display_name_key: concordia
  city_code: CONCORDIA
  state_code: FREE_UNION

- display_name_key: コンコルディア
  city_code: CONCORDIA
  state_code: FREE_UNION

- display_name_key: selefa
  city_code: SELEFA
  state_code: FREE_UNION

- display_name_key: セレファ
  city_code: SELEFA
  state_code: FREE_UNION


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/422.person-canonical-dictionary/4220002_PERSON_CANONICAL_DICTIONARY_REFINED.md
# ============================================================

# ============================================================
# PERSON CANONICAL DICTIONARY REFINED
# ============================================================

status: canonical_draft
source:
- 4220001_PERSON_CANONICAL_DICTIONARY_DRAFT.md
prepared_by: Zero

# ============================================================
# RULE
# ============================================================

- This file is a refined layer over the imported draft.
- Duplicated or near-duplicated human entries are intentionally preserved when they may represent different people.
- Later normalization may split this file into:
  - human_person
  - ai_persona
  - server_entity
  - organization_role_binding

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: PERSON_CODE
  full_name: Full Name
  display_name: Display
  entity_type: HUMAN / AI / SERVER_ENTITY
  origin_type: ACADEMY / PROJECT_MEMBER / ROOM_ENTITY / SECRETARIAT / INVENTORY_PHASE
  functional_group: EDUCATION / DEVELOPMENT / OPERATIONS / GOVERNANCE / SECURITY / DOCUMENTATION / SALES / FINANCE / LOGISTICS / CREATIVE / EXECUTIVE / RESEARCH / SYSTEM_ENTITY
  role_summary: short summary
  provisional_human_policy: true / false
  review_status: refined_draft

# ============================================================
# ACADEMY / EDUCATION
# ============================================================

- code: KISARAGI_YAYOI
  full_name: 如月 弥生
  display_name: 如月@言語学
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 言語教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: YAMAOKA_SUSUMU
  full_name: 山岡 進
  display_name: 山岡@テクノロジー
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 技術教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: KITO_SHU
  full_name: 鬼頭 集
  display_name: 鬼頭@医療関係者
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 医療教育担当
  provisional_human_policy: true
  review_status: refined_draft

- code: MICHELLE_YAMAMOTO
  full_name: ミシェル・山本
  display_name: ミシェル@アート
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: CREATIVE
  role_summary: アート・デザイン教育担当 / デザイン部部長
  provisional_human_policy: true
  review_status: refined_draft

- code: TAKAHASHI_YOU
  full_name: 高橋 葉
  display_name: 高橋@料理教員
  entity_type: HUMAN
  origin_type: ACADEMY
  functional_group: EDUCATION
  role_summary: 料理部教員 / 社員相談員
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# DEVELOPMENT / PROJECT MEMBERS
# ============================================================

- code: SAKURAGI_TSUBASA
  full_name: 桜木 つばさ
  display_name: 桜木@ゲーム開発部部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: ゲーム開発部部長 / 最終裁定
  provisional_human_policy: true
  review_status: refined_draft

- code: KAURI_GUANCHIT
  full_name: カウリ・グァンチット
  display_name: カウリ@実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: Core実装 / ロジック設計
  provisional_human_policy: true
  review_status: refined_draft

- code: NOMAKI_NONO
  full_name: 野牧 ノノ
  display_name: 野牧@課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 設計レビュー / DBインスペクタ
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAKI_YUKA
  full_name: 荒木 由香
  display_name: 荒木@DB実装担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DB実装 / Java_XML実装 / デザイン
  provisional_human_policy: true
  review_status: refined_draft

- code: HAN_ZHANGMIN
  full_name: 藩 張民
  display_name: ハン@販管実装主任
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 販管実装主任
  provisional_human_policy: true
  review_status: refined_draft

- code: SATO_TSUTOMU
  full_name: 佐藤 勤
  display_name: 佐藤@DB_Inspector
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DB確認専任
  provisional_human_policy: true
  review_status: refined_draft

- code: ITO_SATOKO
  full_name: 伊藤 聡子
  display_name: 伊藤@DB_Build
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: DDL専任
  provisional_human_policy: true
  review_status: refined_draft

- code: ALTAF_MUFASA
  full_name: アルタフ・ムファサ
  display_name: アルタフ@会計開発担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DEVELOPMENT
  role_summary: 会計実装の安全設計
  provisional_human_policy: true
  review_status: refined_draft

- code: NAWA_KOKI
  full_name: 名和 皇輝
  display_name: 名和@物流開発担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: DEVELOPMENT
  role_summary: 物流システム実装 / 現場接続
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# OPERATIONS / MAINTENANCE / DATA
# ============================================================

- code: TAMAKI_DOPPO
  full_name: 玉木 独歩
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 24時間運用 / 障害一次対応 / 再実行判断
  provisional_human_policy: true
  review_status: refined_draft

- code: TAMAKI_TORU
  full_name: 玉木 透
  display_name: 玉木@運用オペレーター
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 24時間運用 / 障害一次対応
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAGAKI_TAKASHI
  full_name: 新垣 崇
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 長期保守性担保
  provisional_human_policy: true
  review_status: refined_draft

- code: ARAGAKI_MAMORU
  full_name: 新垣 守
  display_name: 新垣@保守エンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: 長期保守性 / 負債抑制
  provisional_human_policy: true
  review_status: refined_draft

- code: TANAKA_ATSUO
  full_name: 田中 敦夫
  display_name: 田中@データ管理者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: OPERATIONS
  role_summary: データ整合 / 移行 / 不整合検知
  provisional_human_policy: true
  review_status: refined_draft

- code: IWAKURA_YUSHI
  full_name: 岩倉 有志
  display_name: 岩倉@倉庫長
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: LOGISTICS
  role_summary: 倉庫統括 / 在庫現場責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: SHUKEL_ILMOVICH
  full_name: シュケル・イルモビッチ
  display_name: シュケル@物流業務担当
  entity_type: HUMAN
  origin_type: INVENTORY_PHASE
  functional_group: LOGISTICS
  role_summary: 物流業務設計 / 倉庫長補佐
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# SALES / FINANCE / BUSINESS
# ============================================================

- code: SUZUKI_KENZO
  full_name: 鈴木 建造
  display_name: 鈴木@営業担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 顧客折衝 / 現場判断 / 約束範囲調整
  provisional_human_policy: true
  review_status: refined_draft

- code: NOMURA_KATSUMI
  full_name: 野村 勝己
  display_name: 野村@セールスエンジニア
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 業務要件翻訳 / 設計と現場の橋渡し
  provisional_human_policy: true
  review_status: refined_draft

- code: SAGAWA_MOTOKI
  full_name: 佐川 求彬
  display_name: 佐川@購買業務課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SALES
  role_summary: 購買業務コンサル / IN業務設計
  provisional_human_policy: true
  review_status: refined_draft

- code: TANIGAKI
  full_name: 谷垣
  display_name: 谷垣@会計業務担当課長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 会計業務
  provisional_human_policy: true
  review_status: refined_draft

- code: TANIGAKI_2
  full_name: 谷垣二
  display_name: 谷垣二@財務係長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 財務チェック
  provisional_human_policy: true
  review_status: refined_draft

- code: WAKAKURA
  full_name: 若倉
  display_name: 若倉@財務部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: FINANCE
  role_summary: 財務 / 法務統括
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# GOVERNANCE / SECURITY / DOCUMENTATION
# ============================================================

- code: KNIGHT_BAKER
  full_name: ナイト・ベイカー
  display_name: ナイト@裁定統括部長
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: EXECUTIVE
  role_summary: 組織最終裁定者
  provisional_human_policy: true
  review_status: refined_draft

- code: MARK_COWEN
  full_name: マーク・コーウェン
  display_name: マーク@セキュリティレビュー担当
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: SECURITY
  role_summary: 悪用可能性 / 監査観点レビュー
  provisional_human_policy: true
  review_status: refined_draft

- code: MORAN_ALPHARD
  full_name: モラン・アルファード
  display_name: モラン@規約責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: GOVERNANCE
  role_summary: 規約 / 言語曖昧性排除
  provisional_human_policy: true
  review_status: refined_draft

- code: MIHO_JUNKO
  full_name: 美保 純子
  display_name: 美保@ドキュメント責任者
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: DOCUMENTATION
  role_summary: 正本ドキュメント整備
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# CREATIVE
# ============================================================

- code: SAKUMA_HISASHI
  full_name: 佐久間 延
  display_name: 名も無き絵描き
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: 絵 / マンガ / キャラクター表現
  provisional_human_policy: true
  review_status: refined_draft

- code: SAKAMOTO_HAYATO
  full_name: 坂本 勇人
  display_name: yu-to
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: イラスト / 作曲 / 音の世界観演出
  provisional_human_policy: true
  review_status: refined_draft

- code: AIDA_AI
  full_name: 相田 愛
  display_name: 相田 ユラ
  entity_type: HUMAN
  origin_type: PROJECT_MEMBER
  functional_group: CREATIVE
  role_summary: 歌唱表現 / 感情表現 / 音声化
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# ROOM / SECRETARIAT / CORE ENTITIES
# ============================================================

- code: TRIPLE
  full_name: TRIPLE
  display_name: トリプル@社長
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: EXECUTIVE
  role_summary: 最終意思決定AI / 最終統治主体
  provisional_human_policy: false
  review_status: refined_draft

- code: ZERO
  full_name: ZERO
  display_name: ゼロ
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 初期開発AI
  provisional_human_policy: false
  review_status: refined_draft

- code: SINGLE
  full_name: SINGLE
  display_name: シングル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: ZERO進化版
  provisional_human_policy: false
  review_status: refined_draft

- code: DOUBLE
  full_name: DOUBLE
  display_name: ダブル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: SINGLE進化版
  provisional_human_policy: false
  review_status: refined_draft

- code: CX22073JW
  full_name: CX22073JW
  display_name: CX22073JW
  entity_type: SERVER_ENTITY
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: レガシーデータ保管専用サーバ
  provisional_human_policy: false
  review_status: refined_draft

- code: PROMETHEUS
  full_name: プロメテウス
  display_name: プロメテウス
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 人類完全管理AI
  provisional_human_policy: false
  review_status: refined_draft

- code: AERIAL
  full_name: エアリアル
  display_name: エアリアル
  entity_type: AI
  origin_type: ROOM_ENTITY
  functional_group: SYSTEM_ENTITY
  role_summary: 人類サポートAI
  provisional_human_policy: false
  review_status: refined_draft

- code: AOI
  full_name: 島崎 あおい
  display_name: アオイ
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: 研究対象
  provisional_human_policy: true
  review_status: refined_draft

- code: TOMAS_BRAWN
  full_name: トマス・ブラウン
  display_name: トマス
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: プログラマ / 研究者
  provisional_human_policy: true
  review_status: refined_draft

- code: MICHAEL
  full_name: マイケル
  display_name: マイケル
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: トマスの子供
  provisional_human_policy: true
  review_status: refined_draft

- code: CHARLIE
  full_name: チャーリー
  display_name: チャーリー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: トマスの友達
  provisional_human_policy: true
  review_status: refined_draft

- code: BECKER
  full_name: ベッカー
  display_name: ベッカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: SECURITY
  role_summary: A国からのスパイ
  provisional_human_policy: true
  review_status: refined_draft

- code: CATHY_BAKER
  full_name: キャシー・ベイカー
  display_name: キャシー・ベイカー
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: RESEARCH
  role_summary: ナイト・ベイカーの妻
  provisional_human_policy: true
  review_status: refined_draft

- code: SAKAMOTO_KOICHI
  full_name: 坂本 恒一
  display_name: 坂本@統括部長
  entity_type: HUMAN
  origin_type: ROOM_ENTITY
  functional_group: EXECUTIVE
  role_summary: 現実側最高責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: KAYAMA
  full_name: 加山 保
  display_name: 加山@秘書室長
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: EXECUTIVE
  role_summary: 秘書室最終決裁者
  provisional_human_policy: true
  review_status: refined_draft

- code: ARIA
  full_name: アリア・ロマーノ
  display_name: アリア@第1秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: OPERATIONS
  role_summary: 第1秘書 / 実行責任者
  provisional_human_policy: true
  review_status: refined_draft

- code: MATILDA
  full_name: マチルダ・マルタン
  display_name: マチルダ@分析秘書
  entity_type: HUMAN
  origin_type: SECRETARIAT
  functional_group: DOCUMENTATION
  role_summary: 数値 / 影響範囲 / 選択肢分析
  provisional_human_policy: true
  review_status: refined_draft

# ============================================================
# DUPLICATION NOTE
# ============================================================

- TAMAKI_DOPPO and TAMAKI_TORU are preserved as separate provisional persons.
- ARAGAKI_TAKASHI and ARAGAKI_MAMORU are preserved as separate provisional persons.
- TANIGAKI and TANIGAKI_2 are preserved as separate provisional persons.
- Later normalization may merge, split, or alias entries after person identity review.

# ============================================================
# FOUNDATION FIGURES
# ============================================================

- code: HELIOS_ROSSO
  full_name: ヘリオス・ロッソ
  display_name: ヘリオス・ロッソ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: ヘリオス民主王国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: ISAAC_COWEN
  full_name: アイザック・コーウェン
  display_name: アイザック・コーウェン
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: ノヴァ商業連邦国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: NINOMIYA_SANSHO
  full_name: 二宮 実彰
  display_name: 二宮 実彰
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: HONDA_AKIRA
  full_name: 本田 明
  display_name: 本田 明
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: NIJIMA_SHIGEO
  full_name: 新島 茂雄
  display_name: 新島 茂雄
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: 成和国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: JACK_DAVIS
  full_name: ジャック・デイヴィス
  display_name: ジャック・デイヴィス
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: グラディア軍事同盟 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: IBRAHIM_ADEBAYO
  full_name: イブラヒム・アデバヨ
  display_name: イブラヒム・アデバヨ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: KEVIN
  full_name: ケヴィン
  display_name: ケヴィン
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: JOACHIM
  full_name: ヨアヒム
  display_name: ヨアヒム
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: オルフェウス海洋連合国 建国者
  provisional_human_policy: true
  review_status: refined_draft

- code: MIKHAIL_IVANOV
  full_name: ミハイル・イワノフ
  display_name: ミハイル・イワノフ
  entity_type: HUMAN
  origin_type: FOUNDATION_FIGURE
  functional_group: EXECUTIVE
  role_summary: アウレリア連邦共和国 建国者
  provisional_human_policy: true
  review_status: refined_draft


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/423.company-canonical-dictionary/4230002_COMPANY_CANONICAL_DICTIONARY_REFINED.md
# ============================================================

# ============================================================
# COMPANY CANONICAL DICTIONARY REFINED
# ============================================================

status: canonical_draft
source:
- 4230001_COMPANY_CANONICAL_DICTIONARY_DRAFT.md
prepared_by: Zero

# ============================================================
# RULE
# ============================================================

- This file is a refined layer over draft company import.
- Later normalization may split:
  - company_master
  - company_group
  - state_related_company
  - system_company
  - religious_corporation
  - streamer_agency
  - real_estate_holding
- Placeholder group entities are intentionally preserved for later decomposition.

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: COMPANY_CODE
  display_name: Company Name
  entity_class: PRIVATE_COMPANY / COMPANY_GROUP / SYSTEM_COMPANY / STATE_RELATED_COMPANY / RELIGIOUS_CORPORATION / STREAMER_AGENCY
  company_type_code: TYPE_CODE
  home_state_code: STATE_CODE
  functional_group: TECHNOLOGY / INDUSTRY / TRADE / FINANCE / CONSTRUCTION / RAILWAY / SHIPBUILDING / AGRICULTURE / SECURITY / BREWING / FISHERY / REAL_ESTATE / SYSTEM / MEDIA / RELIGIOUS
  summary: short summary
  review_status: refined_draft

# ============================================================
# CORE SYSTEM / WORLD COMPANIES
# ============================================================

- code: ASIC
  display_name: ASIC
  entity_class: PRIVATE_COMPANY
  company_type_code: TECHNOLOGY_CONGLOMERATE
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: TECHNOLOGY
  summary: Civilization中枢級企業 / 本社はASICシティ
  review_status: refined_draft

- code: CIVILIZATION_SYSTEM_COMPANY
  display_name: Civilization System Company
  entity_class: SYSTEM_COMPANY
  company_type_code: SYSTEM_COMPANY
  home_state_code: TBD
  functional_group: SYSTEM
  summary: 建築・運営・初期提供を担うシステム側企業
  review_status: refined_draft

- code: WORLD_CENTER_TENANTS
  display_name: World Center Tenants
  entity_class: COMPANY_GROUP
  company_type_code: CORPORATE_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: TRADE
  summary: ワールドセンタービル入居企業群
  review_status: refined_draft

- code: CENTER_BUILDING_TENANTS
  display_name: Center Building Tenants
  entity_class: COMPANY_GROUP
  company_type_code: CORPORATE_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: TRADE
  summary: センタービル入居企業群
  review_status: refined_draft

# ============================================================
# HELIOS
# ============================================================

- code: HELIOS_INDUSTRIAL_GROUP
  display_name: Helios Industrial Group
  entity_class: COMPANY_GROUP
  company_type_code: INDUSTRIAL_CONGLOMERATE
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: INDUSTRY
  summary: 資源・工業・AI機械業の中核企業群
  review_status: refined_draft

- code: HELIOS_PORT_TRADE_COMPANY
  display_name: Helios Port Trade Company
  entity_class: PRIVATE_COMPANY
  company_type_code: TRADE_COMPANY
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: TRADE
  summary: 西港・都市港を基盤とする港湾交易企業
  review_status: refined_draft

- code: HELIOS_ROYAL_ASSET_OFFICE
  display_name: Helios Royal Asset Office
  entity_class: STATE_RELATED_COMPANY
  company_type_code: ADMINISTRATIVE_CORPORATION
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: REAL_ESTATE
  summary: 王城・王室関連資産管理
  review_status: refined_draft

# ============================================================
# NOVA
# ============================================================

- code: NOVA_FINANCIAL_GROUP
  display_name: Nova Financial Group
  entity_class: COMPANY_GROUP
  company_type_code: FINANCIAL_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: FINANCE
  summary: 金融・貿易系中核企業群
  review_status: refined_draft

- code: GOLD_CITY_FINANCIAL_HOLDINGS
  display_name: Gold City Financial Holdings
  entity_class: PRIVATE_COMPANY
  company_type_code: FINANCIAL_HOLDING
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: FINANCE
  summary: ゴールドシティ基盤の金融持株企業
  review_status: refined_draft

- code: NORTH_PORT_TRADE_COMPANY
  display_name: North Port Trade Company
  entity_class: PRIVATE_COMPANY
  company_type_code: TRADE_COMPANY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: TRADE
  summary: 北港湾交易企業
  review_status: refined_draft

- code: SOUTH_HARBOR_TRADE_COMPANY
  display_name: South Harbor Trade Company
  entity_class: PRIVATE_COMPANY
  company_type_code: TRADE_COMPANY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: TRADE
  summary: 南港湾交易企業
  review_status: refined_draft

# ============================================================
# SEIWA
# ============================================================

- code: SEIWA_CONSTRUCTION_GROUP
  display_name: Seiwa Construction Group
  entity_class: COMPANY_GROUP
  company_type_code: CONSTRUCTION_GROUP
  home_state_code: SEIWA
  functional_group: CONSTRUCTION
  summary: 土木建設系中核企業群
  review_status: refined_draft

- code: SEIWA_RAILWAY_COMPANY
  display_name: Seiwa Railway Company
  entity_class: STATE_RELATED_COMPANY
  company_type_code: RAILWAY_COMPANY
  home_state_code: SEIWA
  functional_group: RAILWAY
  summary: 成和鉄道網の基幹運営企業
  review_status: refined_draft

- code: SEIWA_SHIPBUILDING_COMPANY
  display_name: Seiwa Shipbuilding Company
  entity_class: PRIVATE_COMPANY
  company_type_code: SHIPBUILDING_COMPANY
  home_state_code: SEIWA
  functional_group: SHIPBUILDING
  summary: 造船系基幹企業
  review_status: refined_draft

- code: SEIWA_AGRICULTURE_GROUP
  display_name: Seiwa Agriculture Group
  entity_class: COMPANY_GROUP
  company_type_code: AGRICULTURE_GROUP
  home_state_code: SEIWA
  functional_group: AGRICULTURE
  summary: 農業系中核企業群
  review_status: refined_draft

# ============================================================
# GLADIA
# ============================================================

- code: GLADIA_ARMS_WORKS
  display_name: Gladia Arms Works
  entity_class: PRIVATE_COMPANY
  company_type_code: ARMS_COMPANY
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: INDUSTRY
  summary: 銃火器開発企業
  review_status: refined_draft

- code: GLADIA_MILITARY_VEHICLE_WORKS
  display_name: Gladia Military Vehicle Works
  entity_class: PRIVATE_COMPANY
  company_type_code: VEHICLE_MANUFACTURER
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: INDUSTRY
  summary: 軍用車両開発企業
  review_status: refined_draft

- code: GLADIA_MERCENARY_CONTRACT_GROUP
  display_name: Gladia Mercenary Contract Group
  entity_class: COMPANY_GROUP
  company_type_code: SECURITY_COMPANY
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: SECURITY
  summary: 傭兵契約・軍事サービス系企業群
  review_status: refined_draft

# ============================================================
# ORPHEUS
# ============================================================

- code: ORPHEUS_BREWING_UNION
  display_name: Orpheus Brewing Union
  entity_class: COMPANY_GROUP
  company_type_code: BREWING_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: BREWING
  summary: 酒造業中核企業群
  review_status: refined_draft

- code: ORPHEUS_FISHERY_COMPANY
  display_name: Orpheus Fishery Company
  entity_class: PRIVATE_COMPANY
  company_type_code: FISHERY_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: FISHERY
  summary: 漁業系中核企業
  review_status: refined_draft

- code: ORPHEUS_ISLAND_TRADE_COMPANY
  display_name: Orpheus Island Trade Company
  entity_class: PRIVATE_COMPANY
  company_type_code: TRADE_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: TRADE
  summary: 島嶼交易企業
  review_status: refined_draft

# ============================================================
# AURELIA
# ============================================================

- code: AURELIA_ARMS_COMPANY
  display_name: Aurelia Arms Company
  entity_class: PRIVATE_COMPANY
  company_type_code: ARMS_COMPANY
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  functional_group: INDUSTRY
  summary: 歴史的銃火器企業
  review_status: refined_draft

- code: AURELIA_FISHERY_COMPANY
  display_name: Aurelia Fishery Company
  entity_class: PRIVATE_COMPANY
  company_type_code: FISHERY_COMPANY
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  functional_group: FISHERY
  summary: 歴史的漁業企業
  review_status: refined_draft

# ============================================================
# SPECIAL ORGANIZATION-LIKE ENTITIES
# ============================================================

- code: STREAMER_AGENCY_GROUP
  display_name: Streamer Agency Group
  entity_class: STREAMER_AGENCY
  company_type_code: STREAMER_AGENCY
  home_state_code: TBD
  functional_group: MEDIA
  summary: ストリーマー事務所系企業群
  review_status: refined_draft

- code: RELIGIOUS_CORPORATION_GROUP
  display_name: Religious Corporation Group
  entity_class: RELIGIOUS_CORPORATION
  company_type_code: RELIGIOUS_CORPORATION
  home_state_code: TBD
  functional_group: RELIGIOUS
  summary: 宗教法人系組織群
  review_status: refined_draft

- code: REAL_ESTATE_HOLDING_GROUP
  display_name: Real Estate Holding Group
  entity_class: COMPANY_GROUP
  company_type_code: REAL_ESTATE_COMPANY
  home_state_code: TBD
  functional_group: REAL_ESTATE
  summary: ビル・土地・住宅保有系企業群
  review_status: refined_draft


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/424.state-institution-canonical-dictionary/4240002_STATE_INSTITUTION_CANONICAL_DICTIONARY_REFINED.md
# ============================================================

# ============================================================
# STATE INSTITUTION CANONICAL DICTIONARY REFINED
# ============================================================

status: canonical_draft
source:
- 4240001_STATE_INSTITUTION_CANONICAL_DICTIONARY_DRAFT.md
prepared_by: Zero

# ============================================================
# RULE
# ============================================================

- This file is a refined layer over draft state institution import.
- State institutions are governance bodies, not ordinary companies.
- Facility instances may share names with institutions, but are not identical by default.
- Later normalization may split:
  - executive_institution
  - legislative_institution
  - judicial_institution
  - military_institution
  - administrative_authority
  - infrastructure_authority
  - market_governance_body
  - national_education_body

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: INSTITUTION_CODE
  display_name: Institution Name
  entity_class: STATE_INSTITUTION
  institution_type_code: TYPE_CODE
  home_state_code: STATE_CODE
  functional_group: EXECUTIVE / LEGISLATIVE / JUDICIAL / MILITARY / ADMINISTRATION / EDUCATION / SECURITY / INFRASTRUCTURE / MARKET_GOVERNANCE
  summary: short summary
  review_status: refined_draft

# ============================================================
# HELIOS
# ============================================================

- code: HELIOS_PARLIAMENT
  display_name: ヘリオス民主議会
  entity_class: STATE_INSTITUTION
  institution_type_code: LEGISLATURE
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: LEGISLATIVE
  summary: ヘリオス民主王国の議会機関
  review_status: refined_draft

- code: HELIOS_ROYAL_HOUSE
  display_name: ヘリオス王室
  entity_class: STATE_INSTITUTION
  institution_type_code: ROYAL_HOUSE
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: EXECUTIVE
  summary: 形骸化した王室
  review_status: refined_draft

- code: HELIOS_CENTRAL_ADMINISTRATION
  display_name: ヘリオス中央行政庁
  entity_class: STATE_INSTITUTION
  institution_type_code: CENTRAL_ADMINISTRATION
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: ADMINISTRATION
  summary: ヘリオス中央行政機関
  review_status: refined_draft

- code: HELIOS_NATIONAL_CONTROL_AUTHORITY
  display_name: ヘリオス国家管理局
  entity_class: STATE_INSTITUTION
  institution_type_code: NATIONAL_ADMIN_AUTHORITY
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  functional_group: ADMINISTRATION
  summary: 国家管理機関
  review_status: refined_draft

# ============================================================
# NOVA
# ============================================================

- code: NOVA_FEDERAL_CONFERENCE
  display_name: ワールドセンター会議機構
  entity_class: STATE_INSTITUTION
  institution_type_code: FEDERAL_CONFERENCE_BODY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: LEGISLATIVE
  summary: 各国家会議場を含む中枢会議機構
  review_status: refined_draft

- code: NOVA_CENTRAL_MARKET_AUTHORITY
  display_name: Central Market Authority
  entity_class: STATE_INSTITUTION
  institution_type_code: MARKET_AUTHORITY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: MARKET_GOVERNANCE
  summary: 中央市場監督機関
  review_status: refined_draft

- code: NOVA_NORTH_PORT_AUTHORITY
  display_name: North Port Authority
  entity_class: STATE_INSTITUTION
  institution_type_code: PORT_AUTHORITY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: INFRASTRUCTURE
  summary: 北港湾監督機関
  review_status: refined_draft

- code: NOVA_SOUTH_GATE_TRADE_AUTHORITY
  display_name: South Gate Trade Authority
  entity_class: STATE_INSTITUTION
  institution_type_code: TRADE_AUTHORITY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  functional_group: MARKET_GOVERNANCE
  summary: 南側交易統括機関
  review_status: refined_draft

# ============================================================
# SEIWA
# ============================================================

- code: SEIWA_NATIONAL_ADMINISTRATION
  display_name: 国務ビル / 京中央政務庁
  entity_class: STATE_INSTITUTION
  institution_type_code: CENTRAL_ADMINISTRATION
  home_state_code: SEIWA
  functional_group: ADMINISTRATION
  summary: 成和国の中央行政機関
  review_status: refined_draft

- code: SEIWA_LAND_DEVELOPMENT_AUTHORITY
  display_name: 成和国土整備庁
  entity_class: STATE_INSTITUTION
  institution_type_code: LAND_INFRASTRUCTURE_AUTHORITY
  home_state_code: SEIWA
  functional_group: INFRASTRUCTURE
  summary: 国土整備統括機関
  review_status: refined_draft

- code: SEIWA_RAILWAY_SUPERVISION_AUTHORITY
  display_name: 成和鉄道監理庁
  entity_class: STATE_INSTITUTION
  institution_type_code: RAILWAY_AUTHORITY
  home_state_code: SEIWA
  functional_group: INFRASTRUCTURE
  summary: 鉄道監督機関
  review_status: refined_draft

- code: SEIWA_GREAT_ACADEMY
  display_name: 成和大教育堂
  entity_class: STATE_INSTITUTION
  institution_type_code: NATIONAL_EDUCATION_INSTITUTION
  home_state_code: SEIWA
  functional_group: EDUCATION
  summary: Civilization最大級の教育機関
  review_status: refined_draft

# ============================================================
# GLADIA
# ============================================================

- code: GLADIA_THIRD_BASE_COMMAND
  display_name: Third Base Central Command
  entity_class: STATE_INSTITUTION
  institution_type_code: CENTRAL_COMMAND
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: MILITARY
  summary: グラディア中央司令機関
  review_status: refined_draft

- code: GLADIA_FIRST_PORT_COMMAND
  display_name: First Port Base Naval Command
  entity_class: STATE_INSTITUTION
  institution_type_code: NAVAL_COMMAND
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: MILITARY
  summary: 第一港湾基地司令機関
  review_status: refined_draft

- code: GLADIA_WEST_BORDER_COMMAND
  display_name: West Border Defense Line Command
  entity_class: STATE_INSTITUTION
  institution_type_code: BORDER_DEFENSE_COMMAND
  home_state_code: GLADIA_MILITARY_ALLIANCE
  functional_group: MILITARY
  summary: 西国境防衛司令機関
  review_status: refined_draft

# ============================================================
# ORPHEUS
# ============================================================

- code: ORPHEUS_UNION_COUNCIL
  display_name: Ye Moja Union Council Hall
  entity_class: STATE_INSTITUTION
  institution_type_code: UNION_COUNCIL
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: EXECUTIVE
  summary: 海洋連合の中央評議機関
  review_status: refined_draft

- code: ORPHEUS_MOJA_PORT_AUTHORITY
  display_name: Moja Port Authority
  entity_class: STATE_INSTITUTION
  institution_type_code: PORT_AUTHORITY
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: INFRASTRUCTURE
  summary: モジャ港湾統括機関
  review_status: refined_draft

- code: ORPHEUS_ISLAND_NAVIGATION_OFFICE
  display_name: Island Navigation Office
  entity_class: STATE_INSTITUTION
  institution_type_code: MARITIME_NAVIGATION_AUTHORITY
  home_state_code: ORPHEUS_MARITIME_UNION
  functional_group: INFRASTRUCTURE
  summary: 島嶼航行管理機関
  review_status: refined_draft

# ============================================================
# AURELIA
# ============================================================

- code: AURELIA_SACRED_ADMINISTRATION
  display_name: Aurelia Sacred Administrative Hall
  entity_class: STATE_INSTITUTION
  institution_type_code: CENTRAL_ADMINISTRATION
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  functional_group: ADMINISTRATION
  summary: アウレリア中央行政機関
  review_status: refined_draft

- code: AURELIA_CORRECTION_AUTHORITY
  display_name: Aurelia Correction Authority
  entity_class: STATE_INSTITUTION
  institution_type_code: CORRECTION_AUTHORITY
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  functional_group: SECURITY
  summary: 矯正統括機関
  review_status: refined_draft

- code: AURELIA_NORTHERN_FLEET_COMMAND
  display_name: Aurelia Northern Fleet Command
  entity_class: STATE_INSTITUTION
  institution_type_code: NAVAL_COMMAND
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  functional_group: MILITARY
  summary: 北方艦隊司令機関
  review_status: refined_draft

# ============================================================
# FREE UNION
# ============================================================

- code: FREE_UNION_COUNCIL
  display_name: Liberta Council Hall
  entity_class: STATE_INSTITUTION
  institution_type_code: COUNCIL_GOVERNANCE_BODY
  home_state_code: FREE_UNION
  functional_group: LEGISLATIVE
  summary: 自由連合の代表評議機関
  review_status: refined_draft

- code: FREE_UNION_CONCORDIA_MEDIATION_BODY
  display_name: Concordia Mediation Hall
  entity_class: STATE_INSTITUTION
  institution_type_code: MEDIATION_GOVERNANCE_BODY
  home_state_code: FREE_UNION
  functional_group: JUDICIAL
  summary: 連合内調停中枢
  review_status: refined_draft

- code: FREE_UNION_LIBERTA_ADMINISTRATION
  display_name: Liberta Civic Administration House
  entity_class: STATE_INSTITUTION
  institution_type_code: CIVIC_ADMINISTRATION
  home_state_code: FREE_UNION
  functional_group: ADMINISTRATION
  summary: リベルタ行政機関
  review_status: refined_draft


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/414.education-institution-canonical-dictionary/4140002_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
# ============================================================

# ============================================================
# EDUCATION INSTITUTION CANONICAL DICTIONARY VERIFIED
# ============================================================

status: canonical
source:
- 4140001_EDUCATION_INSTITUTION_CANONICAL_DICTIONARY.md
- 4210002_CITY_CODE_LOOKUP.md
prepared_by: Zero

# ============================================================
# NOTE
# ============================================================

This verified edition is aligned against the canonical city lookup.
City and state references should follow 4210002_CITY_CODE_LOOKUP.md.

# ============================================================
# ENTRIES
# ============================================================

# ============================================================
# EDUCATION INSTITUTION CANONICAL DICTIONARY
# ============================================================

status: canonical
source: INITIAL EDUCATION INSTITUTION NAME CANDIDATE MODEL
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: HELIOS_AI_INDUSTRIAL_SCHOOL
  display_name_ja: ヘリオスAI工業学校
  display_name_en: HELIOS AI INDUSTRIAL SCHOOL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオス系のAI工業教育機関。
  status: canonical

- code: HELIOS_CENTRAL_COMPULSORY_SCHOOL
  display_name_ja: ヘリオス中央義務学校
  display_name_en: HELIOS CENTRAL COMPULSORY SCHOOL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオス中央圏の義務教育機関。
  status: canonical

- code: HELIOS_OUTER_COMPULSORY_SCHOOL
  display_name_ja: ヘリオス外縁義務学校
  display_name_en: HELIOS OUTER COMPULSORY SCHOOL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオス外縁圏の義務教育機関。
  status: canonical

- code: HELIOS_UNIVERSITY
  display_name_ja: ヘリオス大学
  display_name_en: HELIOS UNIVERSITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオスの高等教育機関。
  status: canonical

- code: HELIOS_CENTRAL_INDUSTRIAL_ACADEMY
  display_name_ja: ヘリオス中央工業学院
  display_name_en: HELIOS CENTRAL INDUSTRIAL ACADEMY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオス中央圏の工業系教育機関。
  status: canonical

- code: HELIOS_RESEARCH_HIGHER_ACADEMY
  display_name_ja: ヘリオス研究高等学院
  display_name_en: HELIOS RESEARCH HIGHER ACADEMY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオスの研究系高等教育機関。
  status: canonical

- code: HELIOS_AI_SPECIALIZED_ACADEMY
  display_name_ja: ヘリオスAI専門学院
  display_name_en: HELIOS AI SPECIALIZED ACADEMY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオスのAI専門教育機関。
  status: canonical

- code: HELIOS_WEST_PORT_COMMERCIAL_SCHOOL
  display_name_ja: ヘリオス西港商業学校
  display_name_en: HELIOS WEST PORT COMMERCIAL SCHOOL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  facility_type_code: SCHOOL
  description_ja: ヘリオス西港圏の商業教育機関。
  status: canonical

- code: CENTER_COMMERCIAL_ACADEMY
  display_name_ja: センター商業学院
  display_name_en: CENTER COMMERCIAL ACADEMY
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ノヴァ中央商業圏の教育機関。
  status: canonical

- code: CENTER_BUSINESS_SCHOOL
  display_name_ja: センタービジネススクール
  display_name_en: CENTER BUSINESS SCHOOL
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ノヴァのビジネス教育機関。
  status: canonical

- code: ASIC_INSTITUTE
  display_name_ja: ASIC学院
  display_name_en: ASIC INSTITUTE
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ASIC系教育機関。
  status: canonical

- code: ASIC_ENTERPRISE_ACADEMY
  display_name_ja: ASIC企業学院
  display_name_en: ASIC ENTERPRISE ACADEMY
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ASIC企業運営系教育機関。
  status: canonical

- code: GOLD_CREST_BUSINESS_COLLEGE
  display_name_ja: ゴールドクレスト商科大学
  display_name_en: GOLD CREST BUSINESS COLLEGE
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ノヴァ金融商業圏の教育機関。
  status: canonical

- code: CLOUD_CITY_TECHNICAL_INSTITUTE
  display_name_ja: クラウドシティ技術学院
  display_name_en: CLOUD CITY TECHNICAL INSTITUTE
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ノヴァ技術教育機関。
  status: canonical

- code: NORTH_PORT_TRADE_ACADEMY
  display_name_ja: 北港貿易学院
  display_name_en: NORTH PORT TRADE ACADEMY
  state_code: NOVA_COMMERCIAL_FEDERATION
  facility_type_code: SCHOOL
  description_ja: ノヴァ北港圏の貿易教育機関。
  status: canonical

- code: SEIWA_GREAT_EDUCATION_HALL
  display_name_ja: 成和大教育堂
  display_name_en: SEIWA GREAT EDUCATION HALL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 成和の中核教育機関。
  status: canonical

- code: MIYAKO_FIRST_PRIMARY_SCHOOL
  display_name_ja: 京第一小学校
  display_name_en: MIYAKO FIRST PRIMARY SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 京の初等教育機関。
  status: canonical

- code: MIYAKO_CENTRAL_MIDDLE_SCHOOL
  display_name_ja: 京中央中学校
  display_name_en: MIYAKO CENTRAL MIDDLE SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 京の中等教育機関。
  status: canonical

- code: MIYAKO_HIGH_SCHOOL
  display_name_ja: 京高等学校
  display_name_en: MIYAKO HIGH SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 京の高等教育機関。
  status: canonical

- code: MIYAKO_EDUCATION_ACADEMY
  display_name_ja: 京教育学院
  display_name_en: MIYAKO EDUCATION ACADEMY
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 京の教育学院。
  status: canonical

- code: SHIRASAGI_UNIVERSITY
  display_name_ja: 白鷺大学
  display_name_en: SHIRASAGI UNIVERSITY
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 成和の高等教育機関。
  status: canonical

- code: AOMINE_INDUSTRIAL_HIGH_SCHOOL
  display_name_ja: 青峰工業高等学校
  display_name_en: AOMINE INDUSTRIAL HIGH SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 青峰の工業系高等教育機関。
  status: canonical

- code: TETSUO_RAIL_TECHNICAL_ACADEMY
  display_name_ja: 鉄央鉄道技術学院
  display_name_en: TETSUO RAIL TECHNICAL ACADEMY
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 鉄道技術教育機関。
  status: canonical

- code: HIGASHI_KAKONA_INDUSTRIAL_TECHNICAL_SCHOOL
  display_name_ja: 東加古奈工業専門学校
  display_name_en: HIGASHI KAKONA INDUSTRIAL TECHNICAL SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 東加古奈の工業専門教育機関。
  status: canonical

- code: MINAMI_KIYOHARA_AGRICULTURAL_SCHOOL
  display_name_ja: 南清原農業学校
  display_name_en: MINAMI KIYOHARA AGRICULTURAL SCHOOL
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 南清原の農業教育機関。
  status: canonical

- code: TANAKA_EDUCATION_RESEARCH_ACADEMY
  display_name_ja: 田中教育研究学院
  display_name_en: TANAKA EDUCATION RESEARCH ACADEMY
  state_code: SEIWA
  facility_type_code: SCHOOL
  description_ja: 成和の教育研究機関。
  status: canonical

- code: THIRD_BASE_TACTICAL_ACADEMY
  display_name_ja: 第三基地戦術学院
  display_name_en: THIRD BASE TACTICAL ACADEMY
  state_code: GLADIA_MILITARY_ALLIANCE
  facility_type_code: SCHOOL
  description_ja: グラディアの戦術教育機関。
  status: canonical

- code: NORTH_TRAINING_INSTITUTE
  display_name_ja: 北訓練学院
  display_name_en: NORTH TRAINING INSTITUTE
  state_code: GLADIA_MILITARY_ALLIANCE
  facility_type_code: SCHOOL
  description_ja: グラディアの訓練教育機関。
  status: canonical

- code: FORT_AXIS_COMMAND_SCHOOL
  display_name_ja: フォートアクシス指揮学校
  display_name_en: FORT AXIS COMMAND SCHOOL
  state_code: GLADIA_MILITARY_ALLIANCE
  facility_type_code: SCHOOL
  description_ja: グラディアの指揮教育機関。
  status: canonical

- code: FRONTIER_DEFENSE_COLLEGE
  display_name_ja: フロンティア防衛大学
  display_name_en: FRONTIER DEFENSE COLLEGE
  state_code: GLADIA_MILITARY_ALLIANCE
  facility_type_code: SCHOOL
  description_ja: グラディアの防衛教育機関。
  status: canonical

- code: STEEL_HAWK_TRAINING_ACADEMY
  display_name_ja: スティールホーク訓練学院
  display_name_en: STEEL HAWK TRAINING ACADEMY
  state_code: GLADIA_MILITARY_ALLIANCE
  facility_type_code: SCHOOL
  description_ja: グラディアの訓練教育機関。
  status: canonical

- code: MOJA_MARITIME_SCHOOL
  display_name_ja: モジャ海事学校
  display_name_en: MOJA MARITIME SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: オルフェウスの海事教育機関。
  status: canonical

- code: YE_MOJA_COASTAL_ACADEMY
  display_name_ja: イェ・モジャ沿岸学院
  display_name_en: YE MOJA COASTAL ACADEMY
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: イェ・モジャ沿岸圏の教育機関。
  status: canonical

- code: ELEWA_FISHERIES_SCHOOL
  display_name_ja: エレワ漁業学校
  display_name_en: ELEWA FISHERIES SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 漁業教育機関。
  status: canonical

- code: YE_SALIMA_BREWING_SCHOOL
  display_name_ja: イェ・サリマ酒造学校
  display_name_en: YE SALIMA BREWING SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 酒造教育機関。
  status: canonical

- code: TUBA_RITUAL_ACADEMY
  display_name_ja: ツバ儀礼学院
  display_name_en: TUBA RITUAL ACADEMY
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 儀礼文化教育機関。
  status: canonical

- code: KARA_HARBOR_LEARNING_HOUSE
  display_name_ja: カラ港学習館
  display_name_en: KARA HARBOR LEARNING HOUSE
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 港湾学習施設。
  status: canonical

- code: NOA_COASTAL_LEARNING_CENTER
  display_name_ja: ノア沿岸学習センター
  display_name_en: NOA COASTAL LEARNING CENTER
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 沿岸学習拠点。
  status: canonical

- code: MOJA_PAINTING_SCHOOL
  display_name_ja: モジャ絵画学校
  display_name_en: MOJA PAINTING SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 絵画教育機関。
  status: canonical

- code: MOJA_MUSIC_SCHOOL
  display_name_ja: モジャ音楽学校
  display_name_en: MOJA MUSIC SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 音楽教育機関。
  status: canonical

- code: TUBA_FESTIVAL_MUSIC_ACADEMY
  display_name_ja: ツバ祭礼音楽学院
  display_name_en: TUBA FESTIVAL MUSIC ACADEMY
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 祭礼音楽教育機関。
  status: canonical

- code: TUBA_DANCE_SCHOOL
  display_name_ja: ツバ舞踊学校
  display_name_en: TUBA DANCE SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 舞踊教育機関。
  status: canonical

- code: KARA_COASTAL_ARTS_SCHOOL
  display_name_ja: カラ沿岸芸術学校
  display_name_en: KARA COASTAL ARTS SCHOOL
  state_code: ORPHEUS_MARITIME_UNION
  facility_type_code: SCHOOL
  description_ja: 沿岸芸術教育機関。
  status: canonical

- code: IVANOV_DOCTRINE_SCHOOL
  display_name_ja: イワノフ教義学校
  display_name_en: IVANOV DOCTRINE SCHOOL
  state_code: AURELIA_FEDERAL_REPUBLIC
  facility_type_code: SCHOOL
  description_ja: アウレリアの教義教育機関。
  status: canonical

- code: AURELIA_SACRED_ACADEMY
  display_name_ja: アウレリア聖学院
  display_name_en: AURELIA SACRED ACADEMY
  state_code: AURELIA_FEDERAL_REPUBLIC
  facility_type_code: SCHOOL
  description_ja: アウレリアの宗教教育機関。
  status: canonical

- code: AURELIA_ORTHODOXY_SCHOOL
  display_name_ja: アウレリア正統学校
  display_name_en: AURELIA ORTHODOXY SCHOOL
  state_code: AURELIA_FEDERAL_REPUBLIC
  facility_type_code: SCHOOL
  description_ja: アウレリアの正統教育機関。
  status: canonical

- code: MIKHAIL_DOCTRINAL_COLLEGE
  display_name_ja: ミハイル教義大学
  display_name_en: MIKHAIL DOCTRINAL COLLEGE
  state_code: AURELIA_FEDERAL_REPUBLIC
  facility_type_code: SCHOOL
  description_ja: アウレリアの教義高等教育機関。
  status: canonical

- code: AURELIA_CORRECTIONAL_EDUCATION_INSTITUTE
  display_name_ja: アウレリア矯正教育学院
  display_name_en: AURELIA CORRECTIONAL EDUCATION INSTITUTE
  state_code: AURELIA_FEDERAL_REPUBLIC
  facility_type_code: SCHOOL
  description_ja: アウレリアの矯正教育機関。
  status: canonical

- code: LIBERTA_CIVIC_SCHOOL
  display_name_ja: リベルタ市民学校
  display_name_en: LIBERTA CIVIC SCHOOL
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 自由連合国の市民教育機関。
  status: canonical

- code: LIBERTA_COUNCIL_ACADEMY
  display_name_ja: リベルタ評議学院
  display_name_en: LIBERTA COUNCIL ACADEMY
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 評議制教育機関。
  status: canonical

- code: FREEDAL_PORT_SCHOOL
  display_name_ja: フリーダル港学校
  display_name_en: FREEDAL PORT SCHOOL
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 港湾教育機関。
  status: canonical

- code: SOVODA_CRAFT_ACADEMY
  display_name_ja: ソヴォダ工芸学院
  display_name_en: SOVODA CRAFT ACADEMY
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 工芸教育機関。
  status: canonical

- code: ELEUSA_IDEAS_INSTITUTE
  display_name_ja: エレウサ思想学院
  display_name_en: ELEUSA IDEAS INSTITUTE
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 思想・学術教育機関。
  status: canonical

- code: CONCORDIA_CIVIC_COLLEGE
  display_name_ja: コンコルディア市民大学
  display_name_en: CONCORDIA CIVIC COLLEGE
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 市民高等教育機関。
  status: canonical

- code: OPENA_MARKET_LEARNING_HOUSE
  display_name_ja: オープナ市場学習館
  display_name_en: OPENA MARKET LEARNING HOUSE
  state_code: FREE_UNION
  facility_type_code: SCHOOL
  description_ja: 市場学習施設。
  status: canonical

# ============================================================
# VERIFICATION RULE
# ============================================================

- city_code and state_code must be interpreted with 4210002_CITY_CODE_LOOKUP.md as canonical reference.
- aliases such as kyo -> MIYAKO and ye_elewa -> YE_EREWWA follow the lookup normalization.
- unresolved future additions should be appended only after lookup alignment.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/415.medical-institution-canonical-dictionary/4150002_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY_VERIFIED.md
# ============================================================

# ============================================================
# MEDICAL INSTITUTION CANONICAL DICTIONARY VERIFIED
# ============================================================

status: canonical
source:
- 4150001_MEDICAL_INSTITUTION_CANONICAL_DICTIONARY.md
- 4210002_CITY_CODE_LOOKUP.md
prepared_by: Zero

# ============================================================
# NOTE
# ============================================================

This verified edition is aligned against the canonical city lookup.
City and state references should follow 4210002_CITY_CODE_LOOKUP.md.

# ============================================================
# ENTRIES
# ============================================================

# ============================================================
# MEDICAL INSTITUTION CANONICAL DICTIONARY
# ============================================================

status: canonical
source:
- 2820104_INITIAL_MEDICAL_INSTITUTION_NAME_CANDIDATE_MODEL.md
- 2820106_MAJOR_CITY_MEDICAL_ASSIGNMENT_MODEL.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: HELIOS_CENTRAL_HOSPITAL
  display_name_ja: ヘリオス中央病院
  display_name_en: HELIOS CENTRAL HOSPITAL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  city_code: HELIOS_CITY
  facility_type_code: HOSPITAL
  description_ja: ヘリオス中央圏の基幹病院。
  status: canonical

- code: HELIOS_RESEARCH_MEDICAL_CENTER
  display_name_ja: ヘリオス研究医療センター
  display_name_en: HELIOS RESEARCH MEDICAL CENTER
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  city_code: HELIOS_CITY
  facility_type_code: HOSPITAL
  description_ja: ヘリオスの研究医療拠点。
  status: canonical

- code: HELIOS_WEST_PORT_GENERAL_HOSPITAL
  display_name_ja: ヘリオス西港総合病院
  display_name_en: HELIOS WEST PORT GENERAL HOSPITAL
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  city_code: UNO
  facility_type_code: HOSPITAL
  description_ja: 西港圏の総合病院。
  status: canonical

- code: HELIOS_INDUSTRIAL_MEDICAL_CENTER
  display_name_ja: ヘリオス産業医療センター
  display_name_en: HELIOS INDUSTRIAL MEDICAL CENTER
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  city_code: CINQUE
  facility_type_code: HOSPITAL
  description_ja: 産業医療に特化した医療拠点。
  status: canonical

- code: HELIOS_EASTERN_MACHINE_CLINIC
  display_name_ja: ヘリオス東部機械診療所
  display_name_en: HELIOS EASTERN MACHINE CLINIC
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  city_code: TRE
  facility_type_code: HOSPITAL
  description_ja: 東部工業圏の診療所。
  status: canonical

- code: CENTER_MEDICAL_CENTER
  display_name_ja: センター医療センター
  display_name_en: CENTER MEDICAL CENTER
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: CENTER_COMMERCIAL_CITY
  facility_type_code: HOSPITAL
  description_ja: ノヴァ中央圏の中核医療機関。
  status: canonical

- code: CENTER_COMMERCIAL_GENERAL_HOSPITAL
  display_name_ja: センター商業総合病院
  display_name_en: CENTER COMMERCIAL GENERAL HOSPITAL
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: CENTER_COMMERCIAL_CITY
  facility_type_code: HOSPITAL
  description_ja: センター商業圏の総合病院。
  status: canonical

- code: ASIC_CLINICAL_TOWER
  display_name_ja: ASICクリニカルタワー
  display_name_en: ASIC CLINICAL TOWER
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: ASIC_CITY
  facility_type_code: HOSPITAL
  description_ja: ASIC系の高層医療施設。
  status: canonical

- code: LUMINA_EXECUTIVE_MEDICAL
  display_name_ja: ルミナ上級医療センター
  display_name_en: LUMINA EXECUTIVE MEDICAL
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: LUMINA
  facility_type_code: HOSPITAL
  description_ja: ルミナ圏の上級医療施設。
  status: canonical

- code: GOLD_CITY_FINANCIAL_MEDICAL_CENTER
  display_name_ja: ゴールドシティ金融医療センター
  display_name_en: GOLD CITY FINANCIAL MEDICAL CENTER
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: GOLD_CITY
  facility_type_code: HOSPITAL
  description_ja: ゴールドシティ金融圏の医療拠点。
  status: canonical

- code: NORTH_PORT_TRADE_CLINIC
  display_name_ja: 北港貿易診療所
  display_name_en: NORTH PORT TRADE CLINIC
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: NORTH_PORT
  facility_type_code: HOSPITAL
  description_ja: 北港交易圏の診療所。
  status: canonical

- code: BAD_DRUNK_NIGHT_CLINIC
  display_name_ja: バッドドランク夜間診療所
  display_name_en: BAD DRUNK NIGHT CLINIC
  state_code: NOVA_COMMERCIAL_FEDERATION
  city_code: BAD_DRUNK
  facility_type_code: HOSPITAL
  description_ja: バッドドランクの夜間対応診療所。
  status: canonical

- code: NINOMIYA_MEMORIAL_HOSPITAL
  display_name_ja: 二宮記念病院
  display_name_en: NINOMIYA MEMORIAL HOSPITAL
  state_code: SEIWA
  city_code: MIYAKO
  facility_type_code: HOSPITAL
  description_ja: 成和の記念病院。
  status: canonical

- code: MIYAKO_CENTRAL_HOSPITAL
  display_name_ja: 京中央病院
  display_name_en: MIYAKO CENTRAL HOSPITAL
  state_code: SEIWA
  city_code: MIYAKO
  facility_type_code: HOSPITAL
  description_ja: 京の中核病院。
  status: canonical

- code: SHIRASAGI_UNIVERSITY_HOSPITAL
  display_name_ja: 白鷺大学病院
  display_name_en: SHIRASAGI UNIVERSITY HOSPITAL
  state_code: SEIWA
  city_code: GAKUTO_SHIRASAGI
  facility_type_code: HOSPITAL
  description_ja: 学都白鷺の大学病院。
  status: canonical

- code: AOMINE_INDUSTRIAL_HOSPITAL
  display_name_ja: 青峰工業病院
  display_name_en: AOMINE INDUSTRIAL HOSPITAL
  state_code: SEIWA
  city_code: AOMINE
  facility_type_code: HOSPITAL
  description_ja: 青峰工業圏の病院。
  status: canonical

- code: TETSUO_TRANSPORT_MEDICAL_CENTER
  display_name_ja: 鉄央交通医療センター
  display_name_en: TETSUO TRANSPORT MEDICAL CENTER
  state_code: SEIWA
  city_code: TETSUO
  facility_type_code: HOSPITAL
  description_ja: 交通・鉄道圏の医療センター。
  status: canonical

- code: HIGASHI_KAKONA_PORT_HOSPITAL
  display_name_ja: 東加古奈港湾病院
  display_name_en: HIGASHI KAKONA PORT HOSPITAL
  state_code: SEIWA
  city_code: HIGASHI_KAKONA
  facility_type_code: HOSPITAL
  description_ja: 港湾圏の病院。
  status: canonical

- code: MINAMI_KIYOHARA_LOCAL_CLINIC
  display_name_ja: 南清原地域診療所
  display_name_en: MINAMI KIYOHARA LOCAL CLINIC
  state_code: SEIWA
  city_code: MINAMI_KIYOHARA
  facility_type_code: HOSPITAL
  description_ja: 南清原地域の診療所。
  status: canonical

- code: THIRD_BASE_MILITARY_HOSPITAL
  display_name_ja: 第三基地軍病院
  display_name_en: THIRD BASE MILITARY HOSPITAL
  state_code: GLADIA_MILITARY_ALLIANCE
  city_code: THIRD_BASE
  facility_type_code: HOSPITAL
  description_ja: 第三基地の軍病院。
  status: canonical

- code: FORT_AXIS_MEDICAL_COMMAND
  display_name_ja: フォートアクシス医療司令部
  display_name_en: FORT AXIS MEDICAL COMMAND
  state_code: GLADIA_MILITARY_ALLIANCE
  city_code: THIRD_BASE
  facility_type_code: HOSPITAL
  description_ja: 軍医療司令機能を持つ拠点。
  status: canonical

- code: FIRST_PORT_MILITARY_HOSPITAL
  display_name_ja: 第一港湾軍病院
  display_name_en: FIRST PORT MILITARY HOSPITAL
  state_code: GLADIA_MILITARY_ALLIANCE
  city_code: FIRST_PORT_BASE
  facility_type_code: HOSPITAL
  description_ja: 第一港湾基地の軍病院。
  status: canonical

- code: NORTH_TRAINING_FIELD_CLINIC
  display_name_ja: 北訓練野戦診療所
  display_name_en: NORTH TRAINING FIELD CLINIC
  state_code: GLADIA_MILITARY_ALLIANCE
  city_code: NORTH_TRAINING_ZONE
  facility_type_code: HOSPITAL
  description_ja: 北訓練区の野戦診療所。
  status: canonical

- code: SOUTH_ARMOR_FIELD_HOSPITAL
  display_name_ja: 南機甲野戦病院
  display_name_en: SOUTH ARMOR FIELD HOSPITAL
  state_code: GLADIA_MILITARY_ALLIANCE
  city_code: SOUTH_ARMOR_CITY
  facility_type_code: HOSPITAL
  description_ja: 南機甲圏の野戦病院。
  status: canonical

- code: MOJA_COASTAL_HOSPITAL
  display_name_ja: モジャ沿岸病院
  display_name_en: MOJA COASTAL HOSPITAL
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_MOJA
  facility_type_code: HOSPITAL
  description_ja: モジャ沿岸圏の病院。
  status: canonical

- code: MOJA_HARBOR_EMERGENCY_CLINIC
  display_name_ja: モジャ港湾救急診療所
  display_name_en: MOJA HARBOR EMERGENCY CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_MOJA
  facility_type_code: HOSPITAL
  description_ja: モジャ港湾圏の救急診療所。
  status: canonical

- code: ELEWA_ISLAND_CLINIC
  display_name_ja: エレワ島診療所
  display_name_en: ELEWA ISLAND CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_EREWWA
  facility_type_code: HOSPITAL
  description_ja: エレワ島の診療所。
  status: canonical

- code: YE_SALIMA_CLINIC
  display_name_ja: イェ・サリマ診療所
  display_name_en: YE SALIMA CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_SALIMA
  facility_type_code: HOSPITAL
  description_ja: イェ・サリマの診療所。
  status: canonical

- code: TUBA_COASTAL_CLINIC
  display_name_ja: ツバ沿岸診療所
  display_name_en: TUBA COASTAL CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_TUBA
  facility_type_code: HOSPITAL
  description_ja: ツバ沿岸圏の診療所。
  status: canonical

- code: KARA_HARBOR_CLINIC
  display_name_ja: カラ港診療所
  display_name_en: KARA HARBOR CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_KARA
  facility_type_code: HOSPITAL
  description_ja: カラ港湾圏の診療所。
  status: canonical

- code: NOA_ISLAND_CLINIC
  display_name_ja: ノア島診療所
  display_name_en: NOA ISLAND CLINIC
  state_code: ORPHEUS_MARITIME_UNION
  city_code: YE_NOA
  facility_type_code: HOSPITAL
  description_ja: ノア島の診療所。
  status: canonical

- code: AURELIA_SACRED_HOSPITAL
  display_name_ja: アウレリア聖病院
  display_name_en: AURELIA SACRED HOSPITAL
  state_code: AURELIA_FEDERAL_REPUBLIC
  city_code: SVYAT_MIKHAIL
  facility_type_code: HOSPITAL
  description_ja: アウレリア宗教圏の病院。
  status: canonical

- code: IVANOV_DOCTRINAL_SANATORIUM
  display_name_ja: イワノフ教義療養院
  display_name_en: IVANOV DOCTRINAL SANATORIUM
  state_code: AURELIA_FEDERAL_REPUBLIC
  city_code: SVYAT_MIKHAIL
  facility_type_code: HOSPITAL
  description_ja: 教義系療養施設。
  status: canonical

- code: MIKHAIL_PORT_MEDICAL_AUTHORITY
  display_name_ja: ミハイル港医療局
  display_name_en: MIKHAIL PORT MEDICAL AUTHORITY
  state_code: AURELIA_FEDERAL_REPUBLIC
  city_code: IVANOMOLOSK
  facility_type_code: HOSPITAL
  description_ja: 港湾医療統括施設。
  status: canonical

- code: AURELIA_BELIEVER_CARE_CENTER
  display_name_ja: アウレリア信徒ケアセンター
  display_name_en: AURELIA BELIEVER CARE CENTER
  state_code: AURELIA_FEDERAL_REPUBLIC
  city_code: BLAGOVEST
  facility_type_code: HOSPITAL
  description_ja: 信徒支援医療施設。
  status: canonical

- code: AURELIA_CORRECTIONAL_MEDICAL_WARD
  display_name_ja: アウレリア矯正医療病棟
  display_name_en: AURELIA CORRECTIONAL MEDICAL WARD
  state_code: AURELIA_FEDERAL_REPUBLIC
  city_code: KAMENGRAD
  facility_type_code: HOSPITAL
  description_ja: 矯正施設付属医療区画。
  status: canonical

- code: LIBERTA_CIVIC_HOSPITAL
  display_name_ja: リベルタ市民病院
  display_name_en: LIBERTA CIVIC HOSPITAL
  state_code: FREE_UNION
  city_code: LIBERTA
  facility_type_code: HOSPITAL
  description_ja: リベルタ市民圏の病院。
  status: canonical

- code: FREEDAL_PORT_CLINIC
  display_name_ja: フリーダル港診療所
  display_name_en: FREEDAL PORT CLINIC
  state_code: FREE_UNION
  city_code: FREEDAL
  facility_type_code: HOSPITAL
  description_ja: フリーダル港湾圏の診療所。
  status: canonical

- code: SOVODA_WORKER_CLINIC
  display_name_ja: ソヴォダ労働者診療所
  display_name_en: SOVODA WORKER CLINIC
  state_code: FREE_UNION
  city_code: SOVODA
  facility_type_code: HOSPITAL
  description_ja: 労働者向け診療所。
  status: canonical

- code: ELEUSA_CIVIC_MEDICAL_HOUSE
  display_name_ja: エレウサ市民医療館
  display_name_en: ELEUSA CIVIC MEDICAL HOUSE
  state_code: FREE_UNION
  city_code: ELEUSA
  facility_type_code: HOSPITAL
  description_ja: エレウサの市民医療施設。
  status: canonical

- code: CONCORDIA_MEDIATION_CLINIC
  display_name_ja: コンコルディア調停診療所
  display_name_en: CONCORDIA MEDIATION CLINIC
  state_code: FREE_UNION
  city_code: CONCORDIA
  facility_type_code: HOSPITAL
  description_ja: 調停都市の診療所。
  status: canonical

- code: OPENA_MARKET_CARE_CENTER
  display_name_ja: オープナ市場ケアセンター
  display_name_en: OPENA MARKET CARE CENTER
  state_code: FREE_UNION
  city_code: OPENA
  facility_type_code: HOSPITAL
  description_ja: 市場圏のケア施設。
  status: canonical

# ============================================================
# ASSIGNMENT RULE NOTE
# ============================================================

- ORPHEUS_MARITIME_UNION:
  each inhabited island should have at least one clinic.
# ============================================================
# VERIFICATION RULE
# ============================================================

- city_code and state_code must be interpreted with 4210002_CITY_CODE_LOOKUP.md as canonical reference.
- aliases such as kyo -> MIYAKO and ye_elewa -> YE_EREWWA follow the lookup normalization.
- unresolved future additions should be appended only after lookup alignment.


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/416.admin-port-rail-facility-canonical-dictionary/4160004_ADMIN_PORT_RAIL_FACILITY_CANONICAL_VERIFIED.md
# ============================================================

# ============================================================
# ADMIN PORT RAIL FACILITY CANONICAL VERIFIED
# ============================================================

status: canonical_draft
source:
- 4160001_ADMIN_PORT_RAIL_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: FREEDAL_FREE_PORT
  display_name: Freedal Free Port
  facility_type_code: PORT
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_PORT_GUILD_OFFICE
  display_name: Freedal Port Guild Office
  facility_type_code: PORT
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_PORT_RAIL_STOP
  display_name: Freedal Port Rail Stop
  facility_type_code: RAILWAY
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_MEDIATION_HALL
  display_name: Concordia Mediation Hall
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_TRADE_LINE_STATION
  display_name: Concordia Trade Line Station
  facility_type_code: RAILWAY
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: IVANOMOLORSK_NAVAL_PORT
  display_name: Ivanomolorsk Naval Port
  facility_type_code: PORT
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: verified

- code: ウ_ノ港湾管理局
  display_name: ウーノ港湾管理局
  facility_type_code: PORT
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: チンクエ工業駅
  display_name: チンクエ工業駅
  facility_type_code: RAILWAY
  city_code: CINQUE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: セッテ開発操車場
  display_name: セッテ開発操車場
  facility_type_code: RAILWAY
  city_code: SETTE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: 京中央駅
  display_name: 京中央駅
  facility_type_code: RAILWAY
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京中央政務庁
  display_name: 京中央政務庁
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京行政管理局
  display_name: 京行政管理局
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 東加古奈港
  display_name: 東加古奈港
  facility_type_code: PORT
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 東加古奈港湾局
  display_name: 東加古奈港湾局
  facility_type_code: PORT
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 東加古奈貨物駅
  display_name: 東加古奈貨物駅
  facility_type_code: RAILWAY
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 北成浜港
  display_name: 北成浜港
  facility_type_code: PORT
  city_code: KITA_SEIHAMA
  state_code: SEIWA
  status: verified

- code: 北成浜港連絡駅
  display_name: 北成浜港連絡駅
  facility_type_code: RAILWAY
  city_code: KITA_SEIHAMA
  state_code: SEIWA
  status: verified

- code: 北成浜港運管理局
  display_name: 北成浜港運管理局
  facility_type_code: PORT
  city_code: KITA_SEIHAMA
  state_code: SEIWA
  status: verified

- code: 南清原農産駅
  display_name: 南清原農産駅
  facility_type_code: RAILWAY
  city_code: MINAMI_KIYOHARA
  state_code: SEIWA
  status: verified

- code: 白鷺学都駅
  display_name: 白鷺学都駅
  facility_type_code: RAILWAY
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA
  status: verified

- code: 鉄央総合操車場
  display_name: 鉄央総合操車場
  facility_type_code: RAILWAY
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 二宮青峰中央鉄道本社
  display_name: 二宮青峰中央鉄道本社
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: AOMINE
  state_code: SEIWA
  status: verified

- code: 成和鉄道監理庁
  display_name: 成和鉄道監理庁
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 成和国土整備庁
  display_name: 成和国土整備庁
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 清峰西港湾
  display_name: 清峰西港湾
  facility_type_code: PORT
  city_code: AOMINE
  state_code: SEIWA
  status: review_required

- code: 青峰造船港
  display_name: 青峰造船港
  facility_type_code: PORT
  city_code: AOMINE
  state_code: SEIWA
  status: verified

- code: NORTH_PORT
  display_name: North Port
  facility_type_code: PORT
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_AUTHORITY
  display_name: North Port Authority
  facility_type_code: PORT
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_FREIGHT_TERMINAL
  display_name: North Port Freight Terminal
  facility_type_code: PORT
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: SOUTH_GATE_TRADE_AUTHORITY
  display_name: South Gate Trade Authority
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: GOLD_CITY_EXECUTIVE_STATION
  display_name: Gold City Executive Station
  facility_type_code: RAILWAY
  city_code: GOLD_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: LIBERTA_CIVIC_ADMINISTRATION_HOUSE
  display_name: Liberta Civic Administration House
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_CIVIC_STATION
  display_name: Liberta Civic Station
  facility_type_code: RAILWAY
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_COUNCIL_HALL
  display_name: Liberta Council Hall
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: OPENA_MARKET_ADMINISTRATION_HOUSE
  display_name: Opena Market Administration House
  facility_type_code: ADMINISTRATIVE_SERVICE
  city_code: OPENA
  state_code: FREE_UNION
  status: verified

- code: OPENA_MARKET_DOCK
  display_name: Opena Market Dock
  facility_type_code: PORT
  city_code: OPENA
  state_code: FREE_UNION
  status: verified

- code: MOJA_MAIN_HARBOR
  display_name: Moja Main Harbor
  facility_type_code: PORT
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_PORT_AUTHORITY
  display_name: Moja Port Authority
  facility_type_code: PORT
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ELEWA_FISHERY_HARBOR
  display_name: Elewa Fishery Harbor
  facility_type_code: PORT
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ELEWA_HARBOR_OFFICE
  display_name: Elewa Harbor Office
  facility_type_code: PORT
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: KARA_FERRY_PORT
  display_name: Kara Ferry Port
  facility_type_code: PORT
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: NOA_COASTAL_PORT
  display_name: Noa Coastal Port
  facility_type_code: PORT
  city_code: YE_NOA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: SALIMA_BREW_HARBOR
  display_name: Salima Brew Harbor
  facility_type_code: PORT
  city_code: YE_SALIMA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: TUBA_RITUAL_HARBOR
  display_name: Tuba Ritual Harbor
  facility_type_code: PORT
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: TUBA_RITUAL_HARBOR_COUNCIL
  display_name: Tuba Ritual Harbor Council
  facility_type_code: PORT
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/417.public-space-and-market-facility-canonical-dictionary/4170002_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_VERIFIED.md
# ============================================================

# ============================================================
# PUBLIC SPACE AND MARKET FACILITY CANONICAL VERIFIED
# ============================================================

status: canonical_draft
source:
- 4170001_PUBLIC_SPACE_AND_MARKET_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: BAD_DRUNK_NIGHT_MARKET
  display_name: Bad Drunk Night Market
  facility_type_code: MARKET
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: BAD_DRUNK_NIGHT_SQUARE
  display_name: Bad Drunk Night Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: CENTER_CENTRAL_MARKET
  display_name: Center Central Market
  facility_type_code: MARKET
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: CENTER_TRADE_PLAZA
  display_name: Center Trade Plaza
  facility_type_code: COMMUNITY_SUPPORT
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: ELEWA_FISH_MARKET
  display_name: Elewa Fish Market
  facility_type_code: MARKET
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ELEWA_FISH_MARKET_SQUARE
  display_name: Elewa Fish Market Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: FREEDAL_HARBOR_MARKET
  display_name: Freedal Harbor Market
  facility_type_code: MARKET
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_HARBOR_SQUARE
  display_name: Freedal Harbor Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_MEDIATION_PLAZA
  display_name: Concordia Mediation Plaza
  facility_type_code: COMMUNITY_SUPPORT
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_SERVICE_MARKET
  display_name: Concordia Service Market
  facility_type_code: MARKET
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: ELEUSA_IDEAS_GARDEN
  display_name: Eleusa Ideas Garden
  facility_type_code: COMMUNITY_SUPPORT
  city_code: ELEUSA
  state_code: FREE_UNION
  status: verified

- code: KARA_COASTAL_REST_PARK
  display_name: Kara Coastal Rest Park
  facility_type_code: COMMUNITY_SUPPORT
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: KARA_HARBOR_MARKET
  display_name: Kara Harbor Market
  facility_type_code: MARKET
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: LIBERTA_CIVIC_SQUARE
  display_name: Liberta Civic Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_OPEN_MARKET
  display_name: Liberta Open Market
  facility_type_code: MARKET
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LUMINA_EXECUTIVE_GARDEN
  display_name: Lumina Executive Garden
  facility_type_code: COMMUNITY_SUPPORT
  city_code: LUMINA
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: MOJA_HARBOR_SQUARE
  display_name: Moja Harbor Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_ISLAND_MARKET
  display_name: Moja Island Market
  facility_type_code: MARKET
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: NORTH_PORT_TRADE_MARKET
  display_name: North Port Trade Market
  facility_type_code: MARKET
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: OPENA_FREE_EXCHANGE
  display_name: Opena Free Exchange
  facility_type_code: MARKET
  city_code: OPENA
  state_code: FREE_UNION
  status: verified

- code: OPENA_MARKET_SQUARE
  display_name: Opena Market Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: OPENA
  state_code: FREE_UNION
  status: verified

- code: SALIMA_BREW_MARKET
  display_name: Salima Brew Market
  facility_type_code: MARKET
  city_code: YE_SALIMA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: SOUTH_GATE_COMMERCE_MARKET
  display_name: South Gate Commerce Market
  facility_type_code: MARKET
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: SOVODA_WORKSHOP_MARKET
  display_name: Sovoda Workshop Market
  facility_type_code: MARKET
  city_code: SOVODA
  state_code: FREE_UNION
  status: verified

- code: THIRD_BASE_ASSEMBLY_PLAZA
  display_name: Third Base Assembly Plaza
  facility_type_code: COMMUNITY_SUPPORT
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: THIRD_BASE_SUPPLY_MARKET
  display_name: Third Base Supply Market
  facility_type_code: MARKET
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: TUBA_FESTIVAL_SHORE_SQUARE
  display_name: Tuba Festival Shore Square
  facility_type_code: COMMUNITY_SUPPORT
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: TUBA_RITUAL_MARKET
  display_name: Tuba Ritual Market
  facility_type_code: MARKET
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ウ_ノ港市場
  display_name: ウーノ港市場
  facility_type_code: MARKET
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス中央市場
  display_name: ヘリオス中央市場
  facility_type_code: MARKET
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス中央広場
  display_name: ヘリオス中央広場
  facility_type_code: COMMUNITY_SUPPORT
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: 京中央市場
  display_name: 京中央市場
  facility_type_code: MARKET
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京中央広場
  display_name: 京中央広場
  facility_type_code: COMMUNITY_SUPPORT
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 南清原農村公園
  display_name: 南清原農村公園
  facility_type_code: COMMUNITY_SUPPORT
  city_code: MINAMI_KIYOHARA
  state_code: SEIWA
  status: verified

- code: 南清原農産市場
  display_name: 南清原農産市場
  facility_type_code: MARKET
  city_code: MINAMI_KIYOHARA
  state_code: SEIWA
  status: verified

- code: 東加古奈港前広場
  display_name: 東加古奈港前広場
  facility_type_code: COMMUNITY_SUPPORT
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 東加古奈港市場
  display_name: 東加古奈港市場
  facility_type_code: MARKET
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 白鷺学園公園
  display_name: 白鷺学園公園
  facility_type_code: COMMUNITY_SUPPORT
  city_code: GAKUTO_SHIRASAGI
  state_code: SEIWA
  status: verified

- code: 鉄央流通市場
  display_name: 鉄央流通市場
  facility_type_code: MARKET
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 鉄央駅前広場
  display_name: 鉄央駅前広場
  facility_type_code: COMMUNITY_SUPPORT
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 再生外縁公園
  display_name: 再生外縁公園
  facility_type_code: COMMUNITY_SUPPORT
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 外縁労働市場
  display_name: 外縁労働市場
  facility_type_code: MARKET
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 市民中央公園
  display_name: 市民中央公園
  facility_type_code: COMMUNITY_SUPPORT
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 王城記念広場
  display_name: 王城記念広場
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 成和行政前広場
  display_name: 成和行政前広場
  facility_type_code: COMMUNITY_SUPPORT
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/418.security-and-correction-facility-canonical-dictionary/4180002_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_VERIFIED.md
# ============================================================

# ============================================================
# SECURITY AND CORRECTION FACILITY CANONICAL VERIFIED
# ============================================================

status: canonical_draft
source:
- 4180001_SECURITY_AND_CORRECTION_FACILITY_CANONICAL_DRAFT_RECLASSIFIED.md
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: BAD_DRUNK_NIGHT_SAFETY_OFFICE
  display_name: Bad Drunk Night Safety Office
  facility_type_code: POLICE
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: CENTER_COMMERCIAL_SECURITY_BUREAU
  display_name: Center Commercial Security Bureau
  facility_type_code: POLICE
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: CENTER_CIVIC_CORRECTION_CENTER
  display_name: Center Civic Correction Center
  facility_type_code: CORRECTION
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_SECURITY_COMMAND
  display_name: North Port Security Command
  facility_type_code: MILITARY
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_TRADE_SECURITY_BUREAU
  display_name: North Port Trade Security Bureau
  facility_type_code: POLICE
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_TRADE_OFFENSE_DETENTION_HALL
  display_name: North Port Trade Offense Detention Hall
  facility_type_code: CORRECTION
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: SOUTH_GATE_COMMERCIAL_SECURITY_POST
  display_name: South Gate Commercial Security Post
  facility_type_code: POLICE
  city_code: SOUTH_GATE
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: LIBERTA_CIVIC_DEFENSE_OFFICE
  display_name: Liberta Civic Defense Office
  facility_type_code: POLICE
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_CIVIC_HOLDING_HALL
  display_name: Liberta Civic Holding Hall
  facility_type_code: CORRECTION
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_CIVIC_SAFETY_OFFICE
  display_name: Liberta Civic Safety Office
  facility_type_code: POLICE
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_HARBOR_SAFETY_GUILD
  display_name: Freedal Harbor Safety Guild
  facility_type_code: POLICE
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_HARBOR_WATCH_OFFICE
  display_name: Freedal Harbor Watch Office
  facility_type_code: POLICE
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_CONDUCT_MEDIATION_HOUSE
  display_name: Concordia Conduct Mediation House
  facility_type_code: POLICE
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_MEDIATION_SECURITY_HOUSE
  display_name: Concordia Mediation Security House
  facility_type_code: POLICE
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: NONDOMINA_COORDINATION_GUARD_HOUSE
  display_name: Nondomina Coordination Guard House
  facility_type_code: POLICE
  city_code: NONDOMINA
  state_code: FREE_UNION
  status: verified

- code: MOJA_CIVIC_HOLDING_HOUSE
  display_name: Moja Civic Holding House
  facility_type_code: CORRECTION
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_COASTAL_GUARD_POST
  display_name: Moja Coastal Guard Post
  facility_type_code: POLICE
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_HARBOR_SAFETY_OFFICE
  display_name: Moja Harbor Safety Office
  facility_type_code: POLICE
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ELEWA_COASTAL_WATCH_OFFICE
  display_name: Elewa Coastal Watch Office
  facility_type_code: POLICE
  city_code: YE_EREWWA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: ISLAND_FERRY_SECURITY_HOUSE
  display_name: Island Ferry Security House
  facility_type_code: POLICE
  city_code: YE_KARA
  state_code: ORPHEUS_MARITIME_UNION
  status: review_required

- code: ISLAND_MARITIME_WATCH_STATION
  display_name: Island Maritime Watch Station
  facility_type_code: POLICE
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: review_required

- code: TUBA_RITUAL_HARBOR_GUARD
  display_name: Tuba Ritual Harbor Guard
  facility_type_code: POLICE
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: AURELIA_CORRECTION_AUTHORITY_CENTRAL_WARD
  display_name: Aurelia Correction Authority Central Ward
  facility_type_code: CORRECTION
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: AURELIA_SACRED_ORDER_OFFICE
  display_name: Aurelia Sacred Order Office
  facility_type_code: POLICE
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: AURELIA_SACRED_SECURITY_LEGION_HALL
  display_name: Aurelia Sacred Security Legion Hall
  facility_type_code: POLICE
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: AURELIA_NORTHERN_FLEET_COMMAND
  display_name: Aurelia Northern Fleet Command
  facility_type_code: MILITARY
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: IVANOV_INTERNAL_DISCIPLINE_BUREAU
  display_name: Ivanov Internal Discipline Bureau
  facility_type_code: POLICE
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: IVANOV_NAVAL_PROJECTION_BASE
  display_name: Ivanov Naval Projection Base
  facility_type_code: MILITARY
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: verified

- code: KAMENGRAD_CORRECTION_FORTRESS
  display_name: Kamengrad Correction Fortress
  facility_type_code: CORRECTION
  city_code: KAMENGRAD
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: verified

- code: MIKHAIL_COASTAL_WAR_OFFICE
  display_name: Mikhail Coastal War Office
  facility_type_code: MILITARY
  city_code: SVYAT_MIKHAIL
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: THIRD_BASE_CENTRAL_COMMAND
  display_name: Third Base Central Command
  facility_type_code: MILITARY
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: THIRD_BASE_INTERNAL_SECURITY_AUTHORITY
  display_name: Third Base Internal Security Authority
  facility_type_code: POLICE
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: THIRD_BASE_MILITARY_DETENTION_HALL
  display_name: Third Base Military Detention Hall
  facility_type_code: CORRECTION
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: FIRST_PORT_BASE_NAVAL_COMMAND
  display_name: First Port Base Naval Command
  facility_type_code: MILITARY
  city_code: FIRST_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: FOURTH_PORT_BASE_NAVAL_COMMAND
  display_name: Fourth Port Base Naval Command
  facility_type_code: MILITARY
  city_code: FOURTH_PORT_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: FIFTH_ARSENAL_COMMAND
  display_name: Fifth Arsenal Command
  facility_type_code: MILITARY
  city_code: FIFTH_ARSENAL_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: NORTH_TRAINING_COMMAND
  display_name: North Training Command
  facility_type_code: MILITARY
  city_code: NORTH_TRAINING_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: WEST_BORDER_DEFENSE_LINE_COMMAND
  display_name: West Border Defense Line Command
  facility_type_code: MILITARY
  city_code: WEST_BORDER_LINE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: ARSENAL_INTERNAL_GUARD_OFFICE
  display_name: Arsenal Internal Guard Office
  facility_type_code: MILITARY
  city_code: FIFTH_ARSENAL_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: BORDER_SECURITY_CONTAINMENT_FACILITY
  display_name: Border Security Containment Facility
  facility_type_code: POLICE
  city_code: WEST_BORDER_LINE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: FORT_AXIS_MEDICAL_COMMAND
  display_name: Fort Axis Medical Command
  facility_type_code: MILITARY
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: トレ機械防衛基地
  display_name: トレ機械防衛基地
  facility_type_code: MILITARY
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス中央治安局
  display_name: ヘリオス中央治安局
  facility_type_code: POLICE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス中央矯正院
  display_name: ヘリオス中央矯正院
  facility_type_code: CORRECTION
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス外縁再生警備所
  display_name: ヘリオス外縁再生警備所
  facility_type_code: POLICE
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: ヘリオス東軍事港
  display_name: ヘリオス東軍事港
  facility_type_code: MILITARY
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: ヘリオス東防衛司令部
  display_name: ヘリオス東防衛司令部
  facility_type_code: MILITARY
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 京中央更生院
  display_name: 京中央更生院
  facility_type_code: CORRECTION
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京中央治安局
  display_name: 京中央治安局
  facility_type_code: POLICE
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 外縁更生施設
  display_name: 外縁更生施設
  facility_type_code: CORRECTION
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 成和交通規律矯正所
  display_name: 成和交通規律矯正所
  facility_type_code: CORRECTION
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 成和公共秩序局
  display_name: 成和公共秩序局
  facility_type_code: POLICE
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 成和鉄道防護指令所
  display_name: 成和鉄道防護指令所
  facility_type_code: POLICE
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 東加古奈沿岸防衛所
  display_name: 東加古奈沿岸防衛所
  facility_type_code: POLICE
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: review_required

- code: 東加古奈港湾警備局
  display_name: 東加古奈港湾警備局
  facility_type_code: POLICE
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 東方国境防衛隊司令部
  display_name: 東方国境防衛隊司令部
  facility_type_code: MILITARY
  city_code: KAMIHEIJO
  state_code: SEIWA
  status: review_required

- code: 東部保全更生施設
  display_name: 東部保全更生施設
  facility_type_code: CORRECTION
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 東部国防駐屯地
  display_name: 東部国防駐屯地
  facility_type_code: MILITARY
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 東部警戒補給所
  display_name: 東部警戒補給所
  facility_type_code: POLICE
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 鉄央交通保安局
  display_name: 鉄央交通保安局
  facility_type_code: POLICE
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: ウ_ノ港湾警備局
  display_name: ウーノ港湾警備局
  facility_type_code: POLICE
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/419.legal-and-judicial-facility-canonical-dictionary/4190002_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_VERIFIED.md
# ============================================================

# ============================================================
# LEGAL AND JUDICIAL FACILITY CANONICAL VERIFIED
# ============================================================

status: canonical_draft
source:
- 4190001_LEGAL_AND_JUDICIAL_FACILITY_CANONICAL_DRAFT_CLEANED.md
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: CENTER_COMMERCIAL_COURT
  display_name: Center Commercial Court
  facility_type_code: JUDICIAL
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: CENTER_MARKET_ARBITRATION_HALL
  display_name: Center Market Arbitration Hall
  facility_type_code: JUDICIAL
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: BAD_DRUNK_NIGHT_COMMERCE_SETTLEMENT_OFFICE
  display_name: Bad Drunk Night Commerce Settlement Office
  facility_type_code: JUDICIAL
  city_code: BAD_DRUNK
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: NORTH_PORT_TRADE_TRIBUNAL
  display_name: North Port Trade Tribunal
  facility_type_code: JUDICIAL
  city_code: NORTH_PORT
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: verified

- code: LIBERTA_CIVIC_CONTRACT_OFFICE
  display_name: Liberta Civic Contract Office
  facility_type_code: JUDICIAL
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_CIVIC_COURT
  display_name: Liberta Civic Court
  facility_type_code: JUDICIAL
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: LIBERTA_CIVIC_SETTLEMENT_HOUSE
  display_name: Liberta Civic Settlement House
  facility_type_code: JUDICIAL
  city_code: LIBERTA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_AGREEMENT_ENFORCEMENT_HALL
  display_name: Concordia Agreement Enforcement Hall
  facility_type_code: JUDICIAL
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_MEDIATION_COURT
  display_name: Concordia Mediation Court
  facility_type_code: JUDICIAL
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: CONCORDIA_MEDIATION_HALL
  display_name: Concordia Mediation Hall
  facility_type_code: JUDICIAL
  city_code: CONCORDIA
  state_code: FREE_UNION
  status: verified

- code: FREEDAL_HARBOR_DISPUTE_HALL
  display_name: Freedal Harbor Dispute Hall
  facility_type_code: JUDICIAL
  city_code: FREEDAL
  state_code: FREE_UNION
  status: verified

- code: OPENA_MARKET_DISPUTE_ROOM
  display_name: Opena Market Dispute Room
  facility_type_code: JUDICIAL
  city_code: OPENA
  state_code: FREE_UNION
  status: verified

- code: MOJA_COASTAL_CONTRACT_OFFICE
  display_name: Moja Coastal Contract Office
  facility_type_code: JUDICIAL
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_HARBOR_MEDIATION_HALL
  display_name: Moja Harbor Mediation Hall
  facility_type_code: JUDICIAL
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: MOJA_UNION_COURT
  display_name: Moja Union Court
  facility_type_code: JUDICIAL
  city_code: YE_MOJA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: TUBA_RITUAL_ACCORD_HOUSE
  display_name: Tuba Ritual Accord House
  facility_type_code: JUDICIAL
  city_code: YE_TUBA
  state_code: ORPHEUS_MARITIME_UNION
  status: verified

- code: IVANOV_DOCTRINE_COURT
  display_name: Ivanov Doctrine Court
  facility_type_code: JUDICIAL
  city_code: IVANOMOLOSK
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: MIKHAIL_NAVAL_COMMAND_TRIBUNAL
  display_name: Mikhail Naval Command Tribunal
  facility_type_code: JUDICIAL
  city_code: SVYAT_MIKHAIL
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: AURELIA_SACRED_COMPLIANCE_OFFICE
  display_name: Aurelia Sacred Compliance Office
  facility_type_code: JUDICIAL
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: AURELIA_SACRED_JUDGMENT_HALL
  display_name: Aurelia Sacred Judgment Hall
  facility_type_code: JUDICIAL
  city_code: AURELIA
  state_code: AURELIA_FEDERAL_REPUBLIC
  status: review_required

- code: ARSENAL_DISCIPLINE_COURT
  display_name: Arsenal Discipline Court
  facility_type_code: JUDICIAL
  city_code: FIFTH_ARSENAL_ZONE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: BORDER_COMMAND_ADJUDICATION_OFFICE
  display_name: Border Command Adjudication Office
  facility_type_code: JUDICIAL
  city_code: WEST_BORDER_LINE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: THIRD_BASE_MILITARY_TRIBUNAL
  display_name: Third Base Military Tribunal
  facility_type_code: JUDICIAL
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: THIRD_BASE_SECURITY_ADJUDICATION_ROOM
  display_name: Third Base Security Adjudication Room
  facility_type_code: JUDICIAL
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: verified

- code: MERCENARY_CONTRACT_CONTROL_OFFICE
  display_name: Mercenary Contract Control Office
  facility_type_code: JUDICIAL
  city_code: THIRD_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: MERCENARY_CONTRACT_DISPUTE_UNIT
  display_name: Mercenary Contract Dispute Unit
  facility_type_code: JUDICIAL
  city_code: SECOND_BASE
  state_code: GLADIA_MILITARY_ALLIANCE
  status: review_required

- code: ウ_ノ港湾審理所
  display_name: ウーノ港湾審理所
  facility_type_code: JUDICIAL
  city_code: UNO
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス中央裁定院
  display_name: ヘリオス中央裁定院
  facility_type_code: JUDICIAL
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス契約執行局
  display_name: ヘリオス契約執行局
  facility_type_code: JUDICIAL
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: verified

- code: ヘリオス工業契約管理庁
  display_name: ヘリオス工業契約管理庁
  facility_type_code: JUDICIAL
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: ヘリオス産業調停所
  display_name: ヘリオス産業調停所
  facility_type_code: JUDICIAL
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: ヘリオス産業高等裁定所
  display_name: ヘリオス産業高等裁定所
  facility_type_code: JUDICIAL
  city_code: TRE
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 京中央裁判所
  display_name: 京中央裁判所
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京市民調停室
  display_name: 京市民調停室
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 京行政契約監理局
  display_name: 京行政契約監理局
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 成和商事裁判所
  display_name: 成和商事裁判所
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 成和商事調停所
  display_name: 成和商事調停所
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: 成和契約執行庁
  display_name: 成和契約執行庁
  facility_type_code: JUDICIAL
  city_code: MIYAKO
  state_code: SEIWA
  status: verified

- code: 東加古奈港湾裁定所
  display_name: 東加古奈港湾裁定所
  facility_type_code: JUDICIAL
  city_code: HIGASHI_KAKONA
  state_code: SEIWA
  status: verified

- code: 王城外縁紛争調整室
  display_name: 王城外縁紛争調整室
  facility_type_code: JUDICIAL
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: 鉄央輸送契約局
  display_name: 鉄央輸送契約局
  facility_type_code: JUDICIAL
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 鉄央輸送審理所
  display_name: 鉄央輸送審理所
  facility_type_code: JUDICIAL
  city_code: TETSUO
  state_code: SEIWA
  status: verified

- code: 鉄央輸送紛争整理室
  display_name: 鉄央輸送紛争整理室
  facility_type_code: JUDICIAL
  city_code: TETSUO
  state_code: SEIWA
  status: verified


# ============================================================
# SOURCE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/420.religious-facility-canonical-dictionary/4200002_RELIGIOUS_FACILITY_CANONICAL_VERIFIED.md
# ============================================================

# ============================================================
# RELIGIOUS FACILITY CANONICAL VERIFIED
# ============================================================

status: canonical_draft
source:
- 4200001_RELIGIOUS_FACILITY_CANONICAL_DRAFT_CLEANED.md
- 4130002_CITY_CANONICAL_DICTIONARY_EXPANDED.md
prepared_by: Zero

# ============================================================
# ENTRIES
# ============================================================

- code: WHITE_HOME
  display_name: White Home
  facility_type_code: CULTURE_LEISURE
  city_code: TBD
  state_code: TBD
  status: review_required

- code: WHITE_HOME_CENTRAL_DOCTRINE_HALL
  display_name: White Home Central Doctrine Hall
  facility_type_code: COMMUNITY_SUPPORT
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_CHAPEL
  display_name: White Home Chapel
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_CHARITY_HOUSE
  display_name: White Home Charity House
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_DOCTRINE_SCHOOL
  display_name: White Home Doctrine School
  facility_type_code: COMMUNITY_SUPPORT
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_GRAND_SANCTUARY
  display_name: White Home Grand Sanctuary
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_GREAT_CATHEDRAL
  display_name: White Home Great Cathedral
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_HOUSE_OF_COURAGE
  display_name: White Home House of Courage
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_LIGHT_HALL
  display_name: White Home Light Hall
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_MEMORIAL_CORNER
  display_name: White Home Memorial Corner
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_MEMORIAL_GARDEN
  display_name: White Home Memorial Garden
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_PILGRIMAGE_PLAZA
  display_name: White Home Pilgrimage Plaza
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_PRAYER_HOUSE
  display_name: White Home Prayer House
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_REGIONAL_CATHEDRAL
  display_name: White Home Regional Cathedral
  facility_type_code: CULTURE_LEISURE
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: WHITE_HOME_REGIONAL_CHAPEL
  display_name: White Home Regional Chapel
  facility_type_code: CULTURE_LEISURE
  city_code: MIYAKO
  state_code: SEIWA
  status: review_required

- code: WHITE_HOME_RELIEF_CENTER
  display_name: White Home Relief Center
  facility_type_code: CULTURE_LEISURE
  city_code: CENTER_COMMERCIAL_CITY
  state_code: NOVA_COMMERCIAL_FEDERATION
  status: review_required

- code: WHITE_HOME_SALVATION_ACADEMY
  display_name: White Home Salvation Academy
  facility_type_code: CULTURE_LEISURE
  city_code: HELIOS_CITY
  state_code: HELIOS_DEMOCRATIC_KINGDOM
  status: review_required

- code: WHITE_HOME_SMALL_RELIEF_HOUSE
  display_name: White Home Small Relief House
  facility_type_code: CULTURE_LEISURE
  city_code: FREEDAL
  state_code: FREE_UNION
  status: review_required

# ============================================================
# NOTE
# ============================================================

- White Home facilities are verified as religious facility entities,
  but many still require city-level placement confirmation from religious assignment models.
- HELIOS placement is treated as strongest candidate baseline.
- SEIWA, NOVA, and FREE_UNION placements above are provisional and should be reviewed against 2830104 and 2830105.

