# ============================================================
# BUSINESS LEGAL SUPPORT ENTITY DEFINITIONS
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 030.model
subfolder: 020.detail
owner: Boss
prepared_by: Zero

entities:

  legal_issue:
    role:
      - 本アプリの中心案件
      - 相談前整理の単位
    minimum_fields:
      - issue_id
      - owner_user_id
      - title
      - issue_type
      - status
      - priority
      - summary
      - started_on
      - next_action
      - created_at
      - updated_at

  contract_item:
    role:
      - 契約台帳
      - issue に紐づく契約単位の整理
    minimum_fields:
      - contract_id
      - issue_id
      - contract_type
      - title
      - counterparty_id
      - signed_on
      - effective_from
      - effective_to
      - renewal_rule
      - auto_renew_flag
      - contract_amount
      - currency_code
      - status
      - created_at
      - updated_at

  deadline_record:
    role:
      - 契約更新、回答、提出、確認などの期限管理
    minimum_fields:
      - deadline_id
      - issue_id
      - related_type
      - related_id
      - deadline_type
      - due_at
      - alert_policy_code
      - completed_flag
      - completed_at
      - created_at
      - updated_at

  counterparty:
    role:
      - 取引先や相手方の整理
    minimum_fields:
      - counterparty_id
      - owner_user_id
      - name
      - counterparty_type
      - country_code
      - contact_person
      - contact_note
      - relationship_note
      - risk_level
      - created_at
      - updated_at

  risk_note:
    role:
      - リスクの整理と対応メモ
    minimum_fields:
      - risk_note_id
      - issue_id
      - related_type
      - related_id
      - risk_category
      - severity
      - summary
      - mitigation_note
      - last_reviewed_at
      - created_at
      - updated_at

  consultation_record:
    role:
      - 相談前後の記録
    minimum_fields:
      - consultation_id
      - issue_id
      - consultation_purpose
      - memo
      - question_list_text
      - result_note
      - next_check_items
      - consulted_at
      - created_at
      - updated_at

  attached_document:
    role:
      - 契約書、証跡、メモ画像、参考資料の添付
    minimum_fields:
      - attachment_id
      - issue_id
      - related_type
      - related_id
      - file_name
      - file_kind
      - storage_scope
      - note
      - uploaded_at

  legal_checklist:
    role:
      - 相談前チェック項目
    minimum_fields:
      - checklist_id
      - issue_id
      - checklist_type
      - item_text
      - checked_flag
      - note
      - sort_order
      - created_at
      - updated_at

  trouble_timeline:
    role:
      - トラブルややり取りの時系列整理
    minimum_fields:
      - timeline_id
      - issue_id
      - occurred_at
      - event_type
      - summary
      - note
      - evidence_attachment_count
      - created_at
      - updated_at

  advisor_share_record:
    role:
      - advisor_viewer 向け共有履歴
    minimum_fields:
      - share_id
      - issue_id
      - share_scope
      - shared_to_label
      - shared_at
      - revoked_at
      - note
