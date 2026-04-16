# ============================================================
# END OF LIFE PLANNER DB LOGICAL SCHEMA DRAFT
# ============================================================

status: canonical-draft
phase: L2-db-logical-schema-draft
reviewers:
  - Sato(DB)

purpose:
  - EndOfLifePlanner の DB logical schema draft を固定する
  - SQL 実装前に table / column / constraint / access pattern を明確化する
  - payload / policy / security と整合した土台を作る

scope:
  - logical draft only
  - まだ physical SQL ではない
  - additive 前提
  - user-scoped 前提

logical_storage_boundary:
  owner_scope:
    key: life_person_id
    meaning: owner 本人の終活データスコープ
  sensitive_data_policy:
    - S3_high は高機微扱い
    - digital_asset_note は所在整理中心
    - password_plaintext は保存禁止
  audit_policy:
    - access_audit_log は append-only
    - export と permission_change を監査対象とする

logical_table_groups:
  master_profile_group:
    - owner_profile
    - emergency_contact
    - family_profile
  preference_group:
    - medical_preference
    - care_preference
    - funeral_preference
  registry_group:
    - contract_registry
    - digital_asset_note
    - document_registry
  sharing_and_handoff_group:
    - family_message
    - handoff_document
    - sharing_permission
  governance_group:
    - checklist_item
    - access_audit_log

design_baseline:
  - primary key は uuid
  - created_at / updated_at を基本保持
  - record_status を基本保持
  - sensitivity_class を基本保持
  - logical delete を優先する
  - 意思系 entity は version_no を保持する
