# ============================================================
# STORAGE MAPPING
# ============================================================

status: canonical-draft
system: life-app
app: LegalSupport

storage_principles:
  - local first
  - metadata と binary を分離する
  - case-centric に配置する
  - 高秘匿ファイルはアクセス制御を強化する
  - export artifact は原資料と分離して保持する

logical_storage_domains:
  case_records:
    description:
      - legal_case とその子 metadata を格納する論理領域
    entities:
      - legal_case
      - stakeholder
      - fact_timeline_event
      - consultation_note
      - legal_task
      - deadline_event

  document_metadata:
    description:
      - 書類 metadata を格納する論理領域
    entities:
      - legal_document
      - evidence_item

  attachment_binary:
    description:
      - 書類や証拠の binary 実体を保持する領域
    references:
      - legal_document.file_reference
      - evidence_item.file_reference

  share_export_records:
    description:
      - 共有パック metadata と生成物参照を保持する領域
    entities:
      - case_share_pack

entity_to_storage_mapping:
  legal_case:
    storage_group: case_records
    persistence_mode: structured_record
    notes:
      - aggregate root
      - permissions は保存しない
      - counts は保存しない

  stakeholder:
    storage_group: case_records
    persistence_mode: structured_record
    partition_hint:
      - by_case_id

  fact_timeline_event:
    storage_group: case_records
    persistence_mode: structured_record
    partition_hint:
      - by_case_id
      - sort_by_event_date

  consultation_note:
    storage_group: case_records
    persistence_mode: structured_record
    partition_hint:
      - by_case_id
      - sort_by_consulted_at_desc

  legal_task:
    storage_group: case_records
    persistence_mode: structured_record
    partition_hint:
      - by_case_id
      - sort_by_due_date

  deadline_event:
    storage_group: case_records
    persistence_mode: structured_record
    partition_hint:
      - by_case_id
      - sort_by_due_date

  legal_document:
    storage_group: document_metadata
    persistence_mode: structured_record
    linked_binary_storage: attachment_binary
    notes:
      - file_reference で binary 実体を参照
      - confidentiality_level を保持

  evidence_item:
    storage_group: document_metadata
    persistence_mode: structured_record
    linked_binary_storage: attachment_binary
    notes:
      - evidence_type に応じて binary 種別が変わる

  advisor_contact:
    storage_group: case_records
    persistence_mode: structured_record
    notes:
      - case 配下でなく owner 配下管理候補

  case_share_pack:
    storage_group: share_export_records
    persistence_mode: structured_record
    linked_binary_storage: attachment_binary
    notes:
      - artifact_reference で生成物を参照

storage_reference_rules:
  file_reference:
    format_candidate:
      - ls_doc_{case_id}_{uuid}
    meaning:
      - 添付 binary の参照キー
  artifact_reference:
    format_candidate:
      - ls_pack_{case_id}_{uuid}
    meaning:
      - 共有パック生成物の参照キー

retention_direction:
  case_records:
    - 案件正本として保持
  document_metadata:
    - binary 削除時も metadata 残存方針を検討可
  attachment_binary:
    - 削除/差替時は監査記録推奨
  share_export_records:
    - 再生成履歴を持てるようにする

implementation_notes:
  - local first のため初期は端末内 storage 主体
  - 同期導入時も reference key は不変に寄せる
  - 高秘匿は file_reference 単位制御を前提にする
