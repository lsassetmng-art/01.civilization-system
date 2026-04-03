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
