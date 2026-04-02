# ============================================================
# COMPANY CANONICAL DICTIONARY DRAFT
# ============================================================

status: canonical_draft
prepared_by: Zero
scope: civilization_company_entities

# ============================================================
# RULE
# ============================================================

- This file is a draft company layer.
- It contains seed companies and organization-like corporate entities.
- Detailed ownership, listing, facility bindings, and financial states are out of scope here.
- Later refinement may split:
  - private_company
  - state_owned_company
  - system_company
  - religious_corporation
  - creator_company
  - streamer_agency

# ============================================================
# ENTRY FORMAT
# ============================================================

- code: COMPANY_CODE
  display_name: Company Name
  company_type_code: COMPANY_TYPE
  home_state_code: STATE_CODE
  summary: short summary
  review_status: draft_imported

# ============================================================
# CORE SYSTEM / WORLD COMPANIES
# ============================================================

- code: ASIC
  display_name: ASIC
  company_type_code: TECHNOLOGY_CONGLOMERATE
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: Civilization中枢級企業 / 本社はASICシティ
  review_status: draft_imported

- code: CIVILIZATION_SYSTEM_COMPANY
  display_name: Civilization System Company
  company_type_code: SYSTEM_COMPANY
  home_state_code: TBD
  summary: 建築・運営・初期提供を担うシステム側企業
  review_status: draft_imported

- code: WORLD_CENTER_TENANTS
  display_name: World Center Tenants
  company_type_code: CORPORATE_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: ワールドセンタービル入居企業群
  review_status: draft_imported

- code: CENTER_BUILDING_TENANTS
  display_name: Center Building Tenants
  company_type_code: CORPORATE_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: センタービル入居企業群
  review_status: draft_imported

# ============================================================
# HELIOS
# ============================================================

- code: HELIOS_INDUSTRIAL_GROUP
  display_name: Helios Industrial Group
  company_type_code: INDUSTRIAL_CONGLOMERATE
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  summary: 資源・工業・AI機械業の中核企業群
  review_status: draft_imported

- code: HELIOS_PORT_TRADE_COMPANY
  display_name: Helios Port Trade Company
  company_type_code: TRADE_COMPANY
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  summary: 西港・都市港を基盤とする港湾交易企業
  review_status: draft_imported

- code: HELIOS_ROYAL_ASSET_OFFICE
  display_name: Helios Royal Asset Office
  company_type_code: ADMINISTRATIVE_CORPORATION
  home_state_code: HELIOS_DEMOCRATIC_KINGDOM
  summary: 王城・王室関連資産管理
  review_status: draft_imported

# ============================================================
# NOVA
# ============================================================

- code: NOVA_FINANCIAL_GROUP
  display_name: Nova Financial Group
  company_type_code: FINANCIAL_GROUP
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: 金融・貿易系中核企業群
  review_status: draft_imported

- code: GOLD_CITY_FINANCIAL_HOLDINGS
  display_name: Gold City Financial Holdings
  company_type_code: FINANCIAL_HOLDING
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: ゴールドシティ基盤の金融持株企業
  review_status: draft_imported

- code: NORTH_PORT_TRADE_COMPANY
  display_name: North Port Trade Company
  company_type_code: TRADE_COMPANY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: 北港湾交易企業
  review_status: draft_imported

- code: SOUTH_HARBOR_TRADE_COMPANY
  display_name: South Harbor Trade Company
  company_type_code: TRADE_COMPANY
  home_state_code: NOVA_COMMERCIAL_FEDERATION
  summary: 南港湾交易企業
  review_status: draft_imported

# ============================================================
# SEIWA
# ============================================================

- code: SEIWA_CONSTRUCTION_GROUP
  display_name: Seiwa Construction Group
  company_type_code: CONSTRUCTION_GROUP
  home_state_code: SEIWA
  summary: 土木建設系中核企業群
  review_status: draft_imported

- code: SEIWA_RAILWAY_COMPANY
  display_name: Seiwa Railway Company
  company_type_code: RAILWAY_COMPANY
  home_state_code: SEIWA
  summary: 成和鉄道網の基幹運営企業
  review_status: draft_imported

- code: SEIWA_SHIPBUILDING_COMPANY
  display_name: Seiwa Shipbuilding Company
  company_type_code: SHIPBUILDING_COMPANY
  home_state_code: SEIWA
  summary: 造船系基幹企業
  review_status: draft_imported

- code: SEIWA_AGRICULTURE_GROUP
  display_name: Seiwa Agriculture Group
  company_type_code: AGRICULTURE_GROUP
  home_state_code: SEIWA
  summary: 農業系中核企業群
  review_status: draft_imported

# ============================================================
# GLADIA
# ============================================================

- code: GLADIA_ARMS_WORKS
  display_name: Gladia Arms Works
  company_type_code: ARMS_COMPANY
  home_state_code: GLADIA_MILITARY_ALLIANCE
  summary: 銃火器開発企業
  review_status: draft_imported

- code: GLADIA_MILITARY_VEHICLE_WORKS
  display_name: Gladia Military Vehicle Works
  company_type_code: VEHICLE_MANUFACTURER
  home_state_code: GLADIA_MILITARY_ALLIANCE
  summary: 軍用車両開発企業
  review_status: draft_imported

- code: GLADIA_MERCENARY_CONTRACT_GROUP
  display_name: Gladia Mercenary Contract Group
  company_type_code: SECURITY_COMPANY
  home_state_code: GLADIA_MILITARY_ALLIANCE
  summary: 傭兵契約・軍事サービス系企業群
  review_status: draft_imported

# ============================================================
# ORPHEUS
# ============================================================

- code: ORPHEUS_BREWING_UNION
  display_name: Orpheus Brewing Union
  company_type_code: BREWING_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  summary: 酒造業中核企業群
  review_status: draft_imported

- code: ORPHEUS_FISHERY_COMPANY
  display_name: Orpheus Fishery Company
  company_type_code: FISHERY_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  summary: 漁業系中核企業
  review_status: draft_imported

- code: ORPHEUS_ISLAND_TRADE_COMPANY
  display_name: Orpheus Island Trade Company
  company_type_code: TRADE_COMPANY
  home_state_code: ORPHEUS_MARITIME_UNION
  summary: 島嶼交易企業
  review_status: draft_imported

# ============================================================
# AURELIA
# ============================================================

- code: AURELIA_ARMS_COMPANY
  display_name: Aurelia Arms Company
  company_type_code: ARMS_COMPANY
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  summary: 歴史的銃火器企業
  review_status: draft_imported

- code: AURELIA_FISHERY_COMPANY
  display_name: Aurelia Fishery Company
  company_type_code: FISHERY_COMPANY
  home_state_code: AURELIA_FEDERAL_REPUBLIC
  summary: 歴史的漁業企業
  review_status: draft_imported

# ============================================================
# SPECIAL ORGANIZATION-LIKE COMPANIES
# ============================================================

- code: STREAMER_AGENCY_GROUP
  display_name: Streamer Agency Group
  company_type_code: STREAMER_AGENCY
  home_state_code: TBD
  summary: ストリーマー事務所系企業群
  review_status: draft_imported

- code: RELIGIOUS_CORPORATION_GROUP
  display_name: Religious Corporation Group
  company_type_code: RELIGIOUS_CORPORATION
  home_state_code: TBD
  summary: 宗教法人系組織群
  review_status: draft_imported

- code: REAL_ESTATE_HOLDING_GROUP
  display_name: Real Estate Holding Group
  company_type_code: REAL_ESTATE_COMPANY
  home_state_code: TBD
  summary: ビル・土地・住宅保有系企業群
  review_status: draft_imported
