# ============================================================
# LEGAL SUPPORT DATA GROUPS AND RETENTION
# ============================================================

status: draft-formal
system: LegalSupport
layer: infrastructure
subdomain: storage

primary_schema:
  name: life

data_groups:
  case_core:
    schema: life
    entities:
      - legal_case
      - fact_timeline
      - stakeholder
      - question_list
      - consultation_note
      - action_item
      - deadline_item
    purpose:
      - 案件本体と継続相談整理の正本

  document_metadata:
    schema: life
    entities:
      - document_item
    purpose:
      - 書類分類、状態、共有可否、重要フラグ管理

  expense_tracking:
    schema: life
    entities:
      - expense_record
    purpose:
      - 相談費用と関連手数料の記録

  export_control:
    schema: life
    entities:
      - export_bundle
    purpose:
      - 共有PDFや共有要約の出力履歴単位

storage_rules:
  - LegalSupport の主データは life スキーマに保存する
  - 共有制御は保存先変更ではなく権限制御で行う
  - BusinessLegalSupport に振り分けても LegalSupport 正本は life に残る
  - 外部専門家共有は将来拡張とし、初期は内部整理を優先する

retention_guidelines:
  active_case:
    policy:
      - 継続更新を前提に保持
  archived_case:
    policy:
      - 完了後も参照できるよう保持
  export_history:
    policy:
      - 再出力確認のため保持
  deleted_scope:
    policy:
      - 削除運用詳細は別途定義
