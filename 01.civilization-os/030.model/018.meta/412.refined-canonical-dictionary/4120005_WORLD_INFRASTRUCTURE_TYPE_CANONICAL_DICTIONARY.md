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
