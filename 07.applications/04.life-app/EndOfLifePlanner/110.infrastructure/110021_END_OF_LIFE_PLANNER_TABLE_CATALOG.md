# ============================================================
# END OF LIFE PLANNER TABLE CATALOG
# ============================================================

status: canonical-draft
phase: L2-db-logical-schema-draft
reviewers:
  - Sato(DB)

tables:

  owner_profile:
    purpose: owner 本人基本情報
    primary_key: owner_profile_id
    scope_key: life_person_id
    core_columns:
      - display_name
      - display_name_kana
      - birth_date
      - address_text
      - emergency_note
      - language_code
      - record_status
      - created_at
      - updated_at
    notes:
      - one current profile per life_person を基本とする

  emergency_contact:
    purpose: 緊急連絡先
    primary_key: emergency_contact_id
    scope_key: life_person_id
    core_columns:
      - display_name
      - relationship_label
      - phone_number
      - email
      - priority_order
      - contact_note
      - share_with_family
      - sensitivity_class
      - record_status
      - created_at
      - updated_at

  family_profile:
    purpose: 家族 / 関係者情報
    primary_key: family_profile_id
    scope_key: life_person_id
    core_columns:
      - display_name
      - relationship_label
      - phone_number
      - email
      - address_text
      - involvement_scope_note
      - is_primary_supporter
      - share_with_family
      - sensitivity_class
      - record_status
      - created_at
      - updated_at

  medical_preference:
    purpose: 医療意思
    primary_key: medical_preference_id
    scope_key: life_person_id
    core_columns:
      - version_no
      - emergency_contact_reference_id
      - life_support_preference
      - hospitalization_contact_note
      - allergy_note
      - medical_history_note
      - communication_note
      - free_text_wish
      - summary_text
      - shared_scope_level
      - effective_from
      - sensitivity_class
      - record_status
      - created_at
      - updated_at
    notes:
      - version 管理対象
      - latest active version を現行版として扱う

  care_preference:
    purpose: 介護意思
    primary_key: care_preference_id
    scope_key: life_person_id
    core_columns:
      - version_no
      - preferred_care_place
      - care_priority_note
      - cost_preference_note
      - family_message_note
      - free_text_wish
      - shared_scope_level
      - effective_from
      - sensitivity_class
      - record_status
      - created_at
      - updated_at
    notes:
      - version 管理対象

  funeral_preference:
    purpose: 葬儀 / 墓 / 供養の希望
    primary_key: funeral_preference_id
    scope_key: life_person_id
    core_columns:
      - version_no
      - funeral_scale
      - religion_or_style_note
      - burial_preference_note
      - memorial_note
      - estimated_cost_amount
      - estimated_cost_currency
      - contact_candidate_note
      - shared_scope_level
      - effective_from
      - sensitivity_class
      - record_status
      - created_at
      - updated_at
    notes:
      - version 管理対象

  contract_registry:
    purpose: 契約 / サブスク一覧
    primary_key: contract_registry_id
    scope_key: life_person_id
    core_columns:
      - contract_name
      - provider_name
      - contract_category
      - billing_cycle
      - amount_value
      - amount_currency
      - payment_method_note
      - cancellation_required
      - contract_document_location_note
      - responsible_family_profile_id
      - status_note
      - share_with_family
      - sensitivity_class
      - record_status
      - created_at
      - updated_at
    notes:
      - subscription は contract_category=subscription

  digital_asset_note:
    purpose: デジタル資産 / アカウント所在整理
    primary_key: digital_asset_note_id
    scope_key: life_person_id
    core_columns:
      - service_name
      - asset_category
      - location_hint_note
      - procedure_note
      - account_identifier_hint
      - password_plaintext_stored
      - export_masking_required
      - share_scope_level
      - sensitivity_class
      - record_status
      - created_at
      - updated_at
    notes:
      - password_plaintext_stored は false fixed
      - viewer 向け masked 表示前提

  document_registry:
    purpose: 重要書類所在整理
    primary_key: document_registry_id
    scope_key: life_person_id
    core_columns:
      - document_name
      - document_category
      - storage_type
      - storage_location_note
      - related_family_profile_id
      - share_with_family
      - note_text
      - sensitivity_class
      - record_status
      - created_at
      - updated_at

  family_message:
    purpose: 家族向けメッセージ
    primary_key: family_message_id
    scope_key: life_person_id
    core_columns:
      - target_scope
      - title_text
      - body_text
      - attachment_count
      - open_condition
      - summary_text
      - sensitivity_class
      - record_status
      - created_at
      - updated_at

  handoff_document:
    purpose: 引継ぎパック出力物
    primary_key: handoff_document_id
    scope_key: life_person_id
    core_columns:
      - document_type
      - generated_from_scope_json
      - masking_policy_json
      - output_language_code
      - output_format
      - generated_at
      - generated_by_role
      - download_count
      - last_downloaded_at
      - sensitivity_class
      - record_status
    notes:
      - 生成履歴管理対象

  sharing_permission:
    purpose: family_viewer / delegated_editor 共有定義
    primary_key: sharing_permission_id
    scope_key: life_person_id
    core_columns:
      - grantee_family_profile_id
      - grantee_role
      - visible_categories_json
      - editable_categories_json
      - export_allowed
      - attachment_view_allowed
      - expires_at
      - permission_status
      - sensitivity_class
      - created_at
      - updated_at
    notes:
      - active permission の重複禁止対象

  checklist_item:
    purpose: 終活進捗管理
    primary_key: checklist_item_id
    scope_key: life_person_id
    core_columns:
      - checklist_category
      - item_code
      - item_label
      - completion_status
      - priority_level
      - linked_entity_type
      - linked_entity_id
      - note_text
      - sensitivity_class
      - created_at
      - updated_at

  access_audit_log:
    purpose: 監査ログ
    primary_key: access_audit_log_id
    scope_key: life_person_id
    core_columns:
      - actor_role
      - actor_family_profile_id
      - action_type
      - target_entity_type
      - target_entity_id
      - action_result
      - action_note
      - occurred_at
      - sensitivity_class
    notes:
      - append-only
      - update / delete 不可前提
