# ============================================================
# LEGAL SUPPORT DOCUMENT METADATA EXTENDED FIELDS
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

entity:
  table_name: life.document_item

purpose:
  - 書類本体ではなく、書類メタ情報をより実務的に整理する
  - 相談準備、提出管理、共有制御、再確認をしやすくする
  - 初期大分類に対して補助的な詳細項目を定義する

extended_fields:
  - field_name: document_subcategory
    type: text|null
    purpose:
      - 大分類の下の補助分類
  - field_name: issuer_name
    type: text|null
    purpose:
      - 発行元や交付元
  - field_name: issued_on
    type: date|null
    purpose:
      - 書類発行日
  - field_name: valid_until
    type: date|null
    purpose:
      - 有効期限がある場合の期限
  - field_name: related_person_name
    type: text|null
    purpose:
      - 誰に関する書類か
  - field_name: external_reference
    type: text|null
    purpose:
      - 契約番号、受付番号、整理番号など
  - field_name: storage_location_note
    type: text|null
    purpose:
      - 保管場所メモ
  - field_name: confidentiality_level
    type: text
    purpose:
      - 共有制御の補助分類
  - field_name: acquisition_due_date
    type: date|null
    purpose:
      - 取得予定期限
  - field_name: submission_due_date
    type: date|null
    purpose:
      - 提出予定期限
  - field_name: last_verified_at
    type: timestamptz|null
    purpose:
      - 最終確認日時
  - field_name: verification_note
    type: text|null
    purpose:
      - 確認時メモ

enums:
  confidentiality_level:
    - normal
    - sensitive
    - private

recommended_mapping_examples:
  contract:
    suggested_subcategories:
      - sales_contract
      - lease_contract
      - service_agreement
      - settlement_agreement
  certificate:
    suggested_subcategories:
      - residence_certificate
      - family_register_certificate
      - acceptance_certificate
      - tax_certificate
  property_record:
    suggested_subcategories:
      - registry_copy
      - ownership_record
      - loan_related_record
  consultation_material:
    suggested_subcategories:
      - prep_note
      - meeting_memo
      - evidence_summary

rules:
  - confidentiality_level default は normal
  - private は family export 既定除外候補
  - valid_until は期限通知対象ではなく参照補助項目
  - submission_due_date がある場合、deadline_item との整合確認を将来追加可能
