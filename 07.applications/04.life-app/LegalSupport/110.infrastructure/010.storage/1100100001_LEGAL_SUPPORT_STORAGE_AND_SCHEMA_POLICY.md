# ============================================================
# LEGAL SUPPORT STORAGE AND SCHEMA POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: infrastructure
subdomain: storage

storage_policy:
  primary_schema: life

storage_principles:
  - LegalSupport の主データは life スキーマに保存する
  - 個人生活文脈の法務整理データとして保持する
  - 家族共有は共有制御で実現し、主保存先スキーマは変えない
  - 外部専門家共有は将来拡張とし、初期段階では life 内保持を前提とする

data_groups:
  case_data:
    schema: life
    includes:
      - legal_case
      - fact_timeline
      - stakeholder
      - question_list
      - consultation_note
      - action_item
      - deadline_item

  document_metadata:
    schema: life
    includes:
      - document_item
      - export_bundle

  expense_data:
    schema: life
    includes:
      - expense_record

integration_storage_boundary:
  - InheritanceSupport 連携時も LegalSupport 側の主保存先は life
  - EndOfLifePlanner 連携時も LegalSupport 側の主保存先は life
  - BusinessLegalSupport へ振り分ける場合は連携データを渡すが、LegalSupport 側正本は life
  - ERP 直保存は前提にしない

future_notes:
  - 将来、共通部品化しても LegalSupport 利用分の主データ境界は life を維持する
