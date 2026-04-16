# ============================================================
# END OF LIFE PLANNER PHYSICAL DB DESIGN WITHOUT SQL
# ============================================================

status: canonical-draft
phase: L7-formal-screen-api-physicaldb-design
type: physical-db-design-without-sql

document_purpose:
  - logical DB design を physical DB 設計レベルまで落とし込む
  - ただし SQL はまだ書かない
  - table / column group / constraint / index direction を最終化する

schema_policy:
  schema_name: life
  table_prefix: eol_
  scope_key: life_person_id

physical_table_design:

  life.eol_owner_profile:
    purpose:
      - owner 基本情報
    key_columns:
      - owner_profile_id
      - life_person_id
    important_columns:
      - display_name
      - display_name_kana
      - birth_date
      - address_text
      - emergency_note
      - language_code
      - record_status
      - created_at
      - updated_at
    physical_notes:
      - owner current active 1件前提
      - owner 単位参照が中心

  life.eol_emergency_contact:
    purpose:
      - 緊急連絡先
    key_columns:
      - emergency_contact_id
      - life_person_id
    important_columns:
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
    index_direction:
      - owner別一覧
      - priority順取得

  life.eol_family_profile:
    purpose:
      - 家族/支援者
    key_columns:
      - family_profile_id
      - life_person_id
    important_columns:
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

  life.eol_medical_preference:
    purpose:
      - 医療意思 version 管理
    key_columns:
      - medical_preference_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - 履歴保持前提
      - current active 1件運用

  life.eol_care_preference:
    purpose:
      - 介護意思 version 管理
    key_columns:
      - care_preference_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - 履歴保持前提
      - current active 1件運用

  life.eol_funeral_preference:
    purpose:
      - 葬儀希望 version 管理
    key_columns:
      - funeral_preference_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - 履歴保持前提
      - current active 1件運用

  life.eol_contract_registry:
    purpose:
      - 契約/サブスク整理
    key_columns:
      - contract_registry_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - subscription filter 使用頻度高

  life.eol_digital_asset_note:
    purpose:
      - デジタル資産所在整理
    key_columns:
      - digital_asset_note_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - password_plaintext_stored false 固定前提
      - masked export 前提

  life.eol_document_registry:
    purpose:
      - 重要書類所在
    key_columns:
      - document_registry_id
      - life_person_id
    important_columns:
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

  life.eol_family_message:
    purpose:
      - 家族向けメッセージ
    key_columns:
      - family_message_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - 添付 metadata 分離は未確定事項

  life.eol_handoff_document:
    purpose:
      - 出力物 snapshot
    key_columns:
      - handoff_document_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - generated snapshot 管理前提

  life.eol_sharing_permission:
    purpose:
      - 共有権限正本
    key_columns:
      - sharing_permission_id
      - life_person_id
    important_columns:
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
    physical_notes:
      - active duplicate 禁止方向

  life.eol_checklist_item:
    purpose:
      - 進捗管理
    key_columns:
      - checklist_item_id
      - life_person_id
    important_columns:
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

  life.eol_access_audit_log:
    purpose:
      - 監査
    key_columns:
      - access_audit_log_id
      - life_person_id
    important_columns:
      - actor_role
      - actor_family_profile_id
      - action_type
      - target_entity_type
      - target_entity_id
      - action_result
      - action_note
      - occurred_at
      - sensitivity_class
    physical_notes:
      - append-only
      - immutable 運用前提

constraint_direction:
  current_active_uniqueness:
    - owner_profile
    - medical_preference
    - care_preference
    - funeral_preference
  sharing_uniqueness:
    - one active permission per owner / grantee / role
  prohibited_storage:
    - password plaintext
  enum_control_direction:
    - record_status
    - sensitivity_class
    - actor_role
    - action_type
    - permission_status
    - preference related states

index_direction:
  common:
    - life_person_id based read
    - record_status based filtering
  specialized:
    - emergency_contact priority_order
    - contract_registry contract_category / cancellation_required
    - document_registry document_category
    - checklist_item category / completion_status
    - access_audit_log occurred_at desc / action_type
    - handoff_document generated_at desc

open_points:
  - attachment metadata separate table decision
  - visible_categories_json row-split decision
  - current active explicit flag decision
  - optional storage object reference decision

physical_db_design_status:
  fixed:
    - table naming direction
    - table responsibilities
    - physical important columns
    - constraint direction
    - index direction
  not_fixed:
    - exact SQL
    - exact data types final
    - exact check constraints final
    - exact unique expression final
