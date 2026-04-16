# ============================================================
# ENTITY FIELD DICTIONARY
# ============================================================

status: canonical-draft
system: life-app
app: LegalSupport

entity_field_dictionary:
  legal_case:
    fields:
      case_id:
        type: id
        required: true
        meaning: 案件識別子
      owner_user_id:
        type: id
        required: true
        meaning: 案件所有者
      title:
        type: text
        required: true
        meaning: 案件名
      category:
        type: enum
        required: true
        meaning: 案件カテゴリ
      summary:
        type: text
        required: true
        meaning: 案件概要
      status:
        type: enum
        required: true
        meaning: draft active waiting completed archived
      importance_level:
        type: enum
        required: false
        meaning: low medium high
      started_on:
        type: date
        required: false
        meaning: 案件開始日
      last_updated_at:
        type: datetime
        required: true
        meaning: 最終更新日時
      next_action_summary:
        type: text
        required: false
        meaning: 次アクション要約
      share_scope:
        type: enum
        required: true
        meaning: private shared limited_shared
      confidentiality_level:
        type: enum
        required: true
        meaning: normal sensitive highly_sensitive
      redaction_default:
        type: enum
        required: true
        meaning: full family_safe minimal
      archive_flag:
        type: boolean
        required: true
        meaning: アーカイブ状態
      archive_reason_optional:
        type: text
        required: false
        meaning: アーカイブ理由

  stakeholder:
    fields:
      stakeholder_id:
        type: id
        required: true
        meaning: 関係者識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      name:
        type: text
        required: true
        meaning: 氏名または表示名
      stakeholder_type:
        type: enum
        required: true
        meaning: self family counterparty supporter lawyer tax_accountant judicial_scrivener administrative_support other
      relation_to_owner:
        type: text
        required: false
        meaning: ownerとの関係
      contact_note:
        type: text
        required: false
        meaning: 連絡メモ
      role_note:
        type: text
        required: false
        meaning: 関係者の役割メモ
      importance_flag:
        type: boolean
        required: true
        meaning: 重要関係者フラグ

  fact_timeline_event:
    fields:
      timeline_event_id:
        type: id
        required: true
        meaning: 時系列イベント識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      event_date:
        type: date
        required: true
        meaning: 発生日
      event_time_optional:
        type: time
        required: false
        meaning: 発生時刻
      title:
        type: text
        required: true
        meaning: 出来事タイトル
      detail:
        type: text
        required: false
        meaning: 詳細メモ
      fact_confidence:
        type: enum
        required: true
        meaning: confirmed likely uncertain user_memory_only
      source_type:
        type: enum
        required: false
        meaning: conversation document memory note other
      source_document_id_optional:
        type: id
        required: false
        meaning: 参照元書類
      related_stakeholder_ids:
        type: id_array
        required: false
        meaning: 関係者配列

  legal_document:
    fields:
      legal_document_id:
        type: id
        required: true
        meaning: 書類識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      document_category:
        type: enum
        required: true
        meaning: contract certificate identification family_register real_estate bank insurance tax will_related message other
      title:
        type: text
        required: true
        meaning: 書類名
      issuer:
        type: text
        required: false
        meaning: 発行者
      issued_on:
        type: date
        required: false
        meaning: 発行日
      expiry_date_optional:
        type: date
        required: false
        meaning: 期限日
      storage_location_note:
        type: text
        required: false
        meaning: 原本保管場所メモ
      file_reference:
        type: storage_ref
        required: false
        meaning: 添付ファイル参照キー
      reviewed_flag:
        type: boolean
        required: true
        meaning: 確認済みフラグ
      confidentiality_level:
        type: enum
        required: true
        meaning: normal sensitive highly_sensitive

  evidence_item:
    fields:
      evidence_item_id:
        type: id
        required: true
        meaning: 証拠識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      title:
        type: text
        required: true
        meaning: 証拠名
      evidence_type:
        type: enum
        required: false
        meaning: image pdf text audio other
      file_reference:
        type: storage_ref
        required: false
        meaning: 添付参照キー
      acquired_on:
        type: date
        required: false
        meaning: 取得日
      source_summary:
        type: text
        required: false
        meaning: 入手元要約
      authenticity_note:
        type: text
        required: false
        meaning: 真正性メモ
      confidentiality_level:
        type: enum
        required: true
        meaning: normal sensitive highly_sensitive

  consultation_note:
    fields:
      consultation_note_id:
        type: id
        required: true
        meaning: 面談記録識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      consulted_at:
        type: datetime
        required: true
        meaning: 相談日時
      advisor_name:
        type: text
        required: true
        meaning: 相談先名称
      advisor_type:
        type: enum
        required: true
        meaning: lawyer tax_accountant judicial_scrivener administrative_support public_service family_support_center other
      consultation_summary:
        type: text
        required: true
        meaning: 相談内容要約
      advice_memo:
        type: text
        required: false
        meaning: 助言メモ
      unresolved_points:
        type: text
        required: false
        meaning: 未解決点
      next_steps:
        type: text
        required: false
        meaning: 次対応

  legal_task:
    fields:
      task_id:
        type: id
        required: true
        meaning: タスク識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      task_type:
        type: enum
        required: true
        meaning: document_collection contact consultation_preparation research waiting other
      title:
        type: text
        required: true
        meaning: タスク名
      description:
        type: text
        required: false
        meaning: タスク詳細
      assigned_to_role:
        type: enum
        required: false
        meaning: owner viewer delegated_editor
      due_date:
        type: date
        required: false
        meaning: 期限日
      status:
        type: enum
        required: true
        meaning: todo in_progress waiting done cancelled
      related_document_id_optional:
        type: id
        required: false
        meaning: 関連書類

  deadline_event:
    fields:
      deadline_event_id:
        type: id
        required: true
        meaning: 期限イベント識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      deadline_type:
        type: enum
        required: true
        meaning: filing meeting reminder review other
      title:
        type: text
        required: true
        meaning: 期限タイトル
      due_date:
        type: date
        required: true
        meaning: 期限日
      severity:
        type: enum
        required: false
        meaning: low medium high critical
      reminder_policy:
        type: json
        required: false
        meaning: 通知ポリシー
      completion_flag:
        type: boolean
        required: true
        meaning: 完了状態

  advisor_contact:
    fields:
      advisor_contact_id:
        type: id
        required: true
        meaning: 相談先識別子
      owner_user_id:
        type: id
        required: true
        meaning: 所有ユーザー
      display_name:
        type: text
        required: true
        meaning: 表示名
      advisor_type:
        type: enum
        required: true
        meaning: 相談先種別
      region_note:
        type: text
        required: false
        meaning: 地域メモ
      contact_memo:
        type: text
        required: false
        meaning: 連絡先メモ
      consultation_fee_note:
        type: text
        required: false
        meaning: 料金メモ
      comparison_note:
        type: text
        required: false
        meaning: 比較メモ

  case_share_pack:
    fields:
      share_pack_id:
        type: id
        required: true
        meaning: 共有パック識別子
      case_id:
        type: id
        required: true
        meaning: 親案件
      pack_type:
        type: enum
        required: true
        meaning: consultation_summary family_share progress_summary other
      format:
        type: enum
        required: true
        meaning: pdf text other
      generated_at:
        type: datetime
        required: true
        meaning: 生成日時
      included_sections:
        type: text_array
        required: true
        meaning: 同梱セクション一覧
      redaction_level:
        type: enum
        required: true
        meaning: full family_safe minimal
      artifact_status:
        type: enum
        required: true
        meaning: queued generated failed
      artifact_reference:
        type: storage_ref
        required: false
        meaning: 生成物参照キー

notes:
  - permissions は field dictionary 対象外
  - counts は集計 response 専用
  - meta は pagination response 専用
