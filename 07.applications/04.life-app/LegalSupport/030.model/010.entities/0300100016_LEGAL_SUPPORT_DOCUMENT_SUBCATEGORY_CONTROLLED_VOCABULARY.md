# ============================================================
# LEGAL SUPPORT DOCUMENT SUBCATEGORY CONTROLLED VOCABULARY
# ============================================================

status: draft-formal
system: LegalSupport
layer: model
subdomain: entities
schema: life

purpose:
  - document_subcategory の候補語彙を制御する
  - document_category 大分類の下で使う補助分類を揺れなくする
  - filter / search / export 表記を安定させる

rules:
  - document_subcategory は text として保持してよいが、推奨候補語彙を固定する
  - 初期段階では strict enum 化せず controlled vocabulary として運用する
  - UI は推奨候補選択 + 任意入力の将来拡張を許容してよい
  - 新規語彙は重複意味を避ける

subcategory_registry:

  id:
    - personal_id
    - residence_card
    - my_number_related
    - passport
    - driver_license
    - insurance_card

  contract:
    - sales_contract
    - lease_contract
    - service_agreement
    - settlement_agreement
    - loan_agreement
    - guaranty_agreement
    - employment_contract
    - subscription_contract

  letter:
    - notice_letter
    - demand_letter
    - explanation_letter
    - warning_letter
    - response_letter

  receipt:
    - payment_receipt
    - transfer_slip
    - invoice_receipt
    - fee_receipt
    - travel_receipt

  certificate:
    - residence_certificate
    - family_register_certificate
    - seal_certificate
    - tax_certificate
    - acceptance_certificate
    - qualification_certificate

  family_record:
    - family_register
    - residence_record
    - kinship_record
    - dependent_record

  property_record:
    - registry_copy
    - ownership_record
    - loan_related_record
    - mortgage_record
    - property_tax_record

  consultation_material:
    - prep_note
    - meeting_memo
    - evidence_summary
    - question_sheet
    - chronology_memo

  other:
    - uncategorized_other

subcategory_management_policy:
  - 厳密 enum 化するのは実装直前でもよい
  - まずは registry 候補を UI 候補として出し、利用状況を見て固定する
  - meaning overlap が強い語彙は増やさない
