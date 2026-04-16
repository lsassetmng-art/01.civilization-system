
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER SQL CONSTRAINT AND INDEX MAPPING
# ============================================================

status: canonical-draft
phase: L4-sql-mapping-draft
reviewers:
  - Sato(DB)

primary_key_policy:
  - 全 table の primary key は uuid 単独主キー

not_null_baseline:
  - primary key
  - life_person_id
  - 必須 business column
  - sensitivity_class where applicable
  - record_status where applicable

check_constraint_mapping:

  common_checks:
    record_status:
      allowed:
        - active
        - archived
        - deleted_logical
    sensitivity_class:
      allowed:
        - S1_low
        - S2_medium
        - S3_high

  medical_preference:
    life_support_preference:
      allowed:
        - undecided
        - prefer
        - do_not_prefer
        - discuss_with_family
    shared_scope_level:
      allowed:
        - private
        - selected_family
        - emergency_shared

  care_preference:
    preferred_care_place:
      allowed:
        - undecided
        - home
        - facility
        - family_discussion
    shared_scope_level:
      allowed:
        - private
        - selected_family
        - emergency_shared

  funeral_preference:
    funeral_scale:
      allowed:
        - undecided
        - small
        - standard
        - large
    shared_scope_level:
      allowed:
        - private
        - selected_family
        - selected_family_and_supporter

  contract_registry:
    contract_category:
      allowed:
        - insurance
        - telecom
        - subscription
        - housing
        - utility
        - other
    billing_cycle:
      allowed:
        - one_time
        - monthly
        - yearly
        - irregular

  digital_asset_note:
    asset_category:
      allowed:
        - account
        - storage
        - domain
        - wallet_hint
        - social
        - device_access
        - other
    password_plaintext_stored:
      fixed:
        - false
    export_masking_required:
      default:
        - true
    share_scope_level:
      allowed:
        - private
        - selected_family
        - selected_family_masked_only

  family_message:
    target_scope:
      allowed:
        - all_family
        - selected_family
        - emergency_contact
        - private_draft
    open_condition:
      allowed:
        - immediate_shared
        - owner_manual_open
        - emergency_open_only

  handoff_document:
    document_type:
      allowed:
        - family_summary
        - emergency_use
        - contract_index
        - message_pack
    output_format:
      allowed:
        - pdf
        - in_app_view
    generated_by_role:
      allowed:
        - owner
        - system

  sharing_permission:
    grantee_role:
      allowed:
        - family_viewer
        - delegated_editor
    permission_status:
      allowed:
        - active
        - revoked
        - expired

  checklist_item:
    checklist_category:
      allowed:
        - profile
        - medical
        - care
        - funeral
        - contract
        - digital_asset
        - document
        - message
        - sharing
    completion_status:
      allowed:
        - not_started
        - in_progress
        - completed
        - skipped
    priority_level:
      allowed:
        - low
        - medium
        - high

  access_audit_log:
    actor_role:
      allowed:
        - owner
        - family_viewer
        - delegated_editor
        - system
    action_type:
      allowed:
        - view
        - export
        - permission_change
        - attachment_play
        - create
        - update
        - logical_delete
    action_result:
      allowed:
        - success
        - denied
        - failed

foreign_key_mapping_candidates:
  - medical_preference.emergency_contact_reference_id -> emergency_contact.emergency_contact_id
  - contract_registry.responsible_family_profile_id -> family_profile.family_profile_id
  - document_registry.related_family_profile_id -> family_profile.family_profile_id
  - sharing_permission.grantee_family_profile_id -> family_profile.family_profile_id
  - access_audit_log.actor_family_profile_id -> family_profile.family_profile_id

partial_unique_index_candidates:
  - owner_profile current active uniqueness by life_person_id where record_status='active'
  - medical_preference current active uniqueness by life_person_id where record_status='active'
  - care_preference current active uniqueness by life_person_id where record_status='active'
  - funeral_preference current active uniqueness by life_person_id where record_status='active'
  - sharing_permission active uniqueness by (life_person_id, grantee_family_profile_id, grantee_role) where permission_status='active'

normal_index_candidates:
  - emergency_contact (life_person_id, record_status, priority_order)
  - family_profile (life_person_id, record_status)
  - contract_registry (life_person_id, record_status, contract_category)
  - contract_registry (life_person_id, cancellation_required)
  - digital_asset_note (life_person_id, record_status, asset_category)
  - document_registry (life_person_id, record_status, document_category)
  - family_message (life_person_id, record_status, open_condition)
  - handoff_document (life_person_id, generated_at desc)
  - sharing_permission (life_person_id, permission_status)
  - checklist_item (life_person_id, checklist_category, completion_status)
  - access_audit_log (life_person_id, occurred_at desc)
  - access_audit_log (life_person_id, action_type, occurred_at desc)

immutability_and_guard_notes:
  - access_audit_log は update / delete 禁止ルールを trigger か policy で担保検討
  - handoff_document は snapshot 的保持を優先
  - preference history は hard delete しない前提
  - digital_asset_note は危険入力を application 層で事前遮断する
