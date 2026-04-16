# ============================================================
# END OF LIFE PLANNER SQL MAPPING DRAFT
# ============================================================

status: canonical-draft
phase: L4-sql-mapping-draft
reviewers:
  - Sato(DB)

purpose:
  - DB logical schema を PostgreSQL 向け SQL 実装草案へ接続する
  - table 名、column 型、constraint、index の実装方向を固定する
  - まだ executable SQL 本体ではなく mapping draft とする

sql_engine_target:
  - PostgreSQL

schema_name_draft:
  - app_end_of_life_planner

naming_policy:
  - schema: snake_case
  - table: snake_case
  - column: snake_case
  - primary_key: <table_name>_id
  - foreign_key: referenced_table logical id name
  - timestamp: timestamptz 前提
  - json payload: jsonb 前提

table_mapping:

  owner_profile:
    sql_table: app_end_of_life_planner.owner_profile
    primary_key: owner_profile_id
    scope_key: life_person_id

  emergency_contact:
    sql_table: app_end_of_life_planner.emergency_contact
    primary_key: emergency_contact_id
    scope_key: life_person_id

  family_profile:
    sql_table: app_end_of_life_planner.family_profile
    primary_key: family_profile_id
    scope_key: life_person_id

  medical_preference:
    sql_table: app_end_of_life_planner.medical_preference
    primary_key: medical_preference_id
    scope_key: life_person_id

  care_preference:
    sql_table: app_end_of_life_planner.care_preference
    primary_key: care_preference_id
    scope_key: life_person_id

  funeral_preference:
    sql_table: app_end_of_life_planner.funeral_preference
    primary_key: funeral_preference_id
    scope_key: life_person_id

  contract_registry:
    sql_table: app_end_of_life_planner.contract_registry
    primary_key: contract_registry_id
    scope_key: life_person_id

  digital_asset_note:
    sql_table: app_end_of_life_planner.digital_asset_note
    primary_key: digital_asset_note_id
    scope_key: life_person_id

  document_registry:
    sql_table: app_end_of_life_planner.document_registry
    primary_key: document_registry_id
    scope_key: life_person_id

  family_message:
    sql_table: app_end_of_life_planner.family_message
    primary_key: family_message_id
    scope_key: life_person_id

  handoff_document:
    sql_table: app_end_of_life_planner.handoff_document
    primary_key: handoff_document_id
    scope_key: life_person_id

  sharing_permission:
    sql_table: app_end_of_life_planner.sharing_permission
    primary_key: sharing_permission_id
    scope_key: life_person_id

  checklist_item:
    sql_table: app_end_of_life_planner.checklist_item
    primary_key: checklist_item_id
    scope_key: life_person_id

  access_audit_log:
    sql_table: app_end_of_life_planner.access_audit_log
    primary_key: access_audit_log_id
    scope_key: life_person_id

common_sql_columns:
  standard_columns:
    - life_person_id uuid not null
    - sensitivity_class text not null
    - record_status text not null
    - created_at timestamptz not null default now()
    - updated_at timestamptz not null default now()
  exceptions:
    access_audit_log:
      - occurred_at timestamptz not null
      - created_at / updated_at を必須共通列にしない運用も許容
    handoff_document:
      - generated_at timestamptz not null
      - updated_at optional design もあり得るが、初期は保持可

enum_mapping_policy:
  - 初期段階では PostgreSQL native enum ではなく text + check constraint を優先する
  - 理由は additive change と拡張容易性を優先するため
  - enum が十分安定後に native enum 再検討可

jsonb_usage_policy:
  use_jsonb_for:
    - generated_from_scope_json
    - masking_policy_json
    - visible_categories_json
    - editable_categories_json
  avoid_jsonb_for:
    - 頻繁に filter / join する主要属性
    - contract_category や action_type のような統制値

sql_generation_order_draft:
  - schema create
  - base tables create
  - foreign keys add
  - check constraints add
  - unique indexes add
  - performance indexes add
  - audit immutability / update trigger policy add

hard_rules_for_sql_phase:
  - password_plaintext_stored は false fixed を check constraint で担保候補
  - access_audit_log は update / delete を禁止する保護策を別途検討
  - sharing_permission active 重複禁止は partial unique index 候補
  - current active version uniqueness は partial unique index 候補
