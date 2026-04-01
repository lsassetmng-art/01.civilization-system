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
