# ============================================================
# PERSISTENCE SCHEMA FIXED
# ============================================================

status: canonical-draft
phase: db-exact-fixed
system: life-app
app: LegalSupport
schema_name: life

persistence_layers:
  metadata_store:
    purpose:
      - structured record 保存
    tables:
      - legal_case
      - stakeholder
      - fact_timeline_event
      - fact_timeline_event_stakeholder
      - legal_document
      - evidence_item
      - consultation_note
      - legal_task
      - deadline_event
      - advisor_contact
      - case_share_grant
      - case_share_pack

  binary_store:
    purpose:
      - 添付ファイルと export artifact 保存
    logical_paths:
      - /legal-support/cases/{case_id}/documents/{file_reference}
      - /legal-support/cases/{case_id}/evidence/{file_reference}
      - /legal-support/cases/{case_id}/exports/{artifact_reference}

storage_reference_contract:
  file_reference:
    owner_tables:
      - legal_document
      - evidence_item
    rules:
      - binary_store 参照キー
      - case 単位で一意寄りに生成
      - 差替時は新参照キー再発行推奨

  artifact_reference:
    owner_tables:
      - case_share_pack
    rules:
      - export binary 参照キー
      - 再生成時は新参照キーを払い出す
      - 原資料の file_reference と混在させない

table_to_persistence_mapping:
  legal_case:
    persistence_type: table_row
    binary_link: none

  stakeholder:
    persistence_type: table_row
    binary_link: none

  fact_timeline_event:
    persistence_type: table_row
    binary_link: none

  fact_timeline_event_stakeholder:
    persistence_type: table_row
    binary_link: none

  legal_document:
    persistence_type: table_row
    binary_link: file_reference

  evidence_item:
    persistence_type: table_row
    binary_link: file_reference

  consultation_note:
    persistence_type: table_row
    binary_link: none

  legal_task:
    persistence_type: table_row
    binary_link: none

  deadline_event:
    persistence_type: table_row
    binary_link: none

  advisor_contact:
    persistence_type: table_row
    binary_link: none

  case_share_grant:
    persistence_type: table_row
    binary_link: none

  case_share_pack:
    persistence_type: table_row
    binary_link: artifact_reference

data_shape_policy:
  included_sections:
    initial_storage: jsonb
    future_option:
      - normalized child table
  reminder_policy_json:
    initial_storage: jsonb
    future_option:
      - dedicated reminder table

high_confidentiality_policy:
  flags:
    - legal_case.confidentiality_level
    - legal_document.confidentiality_level
    - evidence_item.confidentiality_level
  storage_rules:
    - metadata に confidentiality を保持
    - binary access は metadata 判定を通す
    - highly_sensitive は export 既定除外候補

notes:
  - local first でも schema 名は app_legal_support に固定
  - binary path と db key の責務を分離する
