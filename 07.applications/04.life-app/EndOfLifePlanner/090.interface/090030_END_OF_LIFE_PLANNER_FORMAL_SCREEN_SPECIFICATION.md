# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER FORMAL SCREEN SPECIFICATION
# ============================================================

status: canonical-draft
phase: L7-formal-screen-api-physicaldb-design
app: EndOfLifePlanner
type: formal-screen-specification

document_purpose:
  - 画面ごとの入力、表示、遷移、権限差分を正式化する
  - 実装前に UI 責務を固定する
  - design-only のまま仕様確定を進める

global_ui_policy:
  - 高齢者にも分かりやすい少階層構造
  - 高機微情報は常に共有/出力境界を意識したUIにする
  - family_viewer には非共有カテゴリを存在ごと見せない
  - delegated_editor は共有設定と監査に触れさせない
  - 危険入力は保存前に警告する
  - 緊急兆候時は通常入力導線より安全案内を優先する

screen_specifications:

  eol_home_dashboard:
    purpose:
      - 終活全体進捗の確認
      - 未完了項目への最短移動
    main_sections:
      - progress_summary
      - alerts
      - recent_updates
      - sharing_status
      - quick_actions
    visible_for:
      - owner
      - delegated_editor limited
    hidden_for:
      - family_viewer
    primary_actions:
      - 各カテゴリ画面へ移動
      - 共有設定へ移動(owner only)
      - 引継ぎパックへ移動(owner only)
    validation:
      - なし
    notes:
      - delegated_editor には共有/監査導線を非表示

  eol_owner_profile:
    purpose:
      - 本人基本情報の整理
    fields:
      required:
        - display_name
      optional:
        - display_name_kana
        - birth_date
        - address_text
        - emergency_note
        - language_code
    visible_for:
      - owner
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    read_only_for:
      - family_viewer
    validation:
      - display_name required
      - birth_date future not allowed
    transitions:
      - save -> same screen
      - back -> home

  eol_emergency_contacts:
    purpose:
      - 緊急連絡先の管理
    fields:
      required:
        - display_name
        - relationship_label
        - phone_number
        - priority_order
      optional:
        - email
        - contact_note
        - share_with_family
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    validation:
      - phone_number required
      - priority_order integer min 1
    transitions:
      - save -> list refresh
      - select -> detail edit

  eol_family_registry:
    purpose:
      - 家族/支援者登録
    fields:
      required:
        - display_name
        - relationship_label
      optional:
        - phone_number
        - email
        - address_text
        - involvement_scope_note
        - is_primary_supporter
        - share_with_family
    visible_for:
      - owner
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    hidden_for:
      - family_viewer

  eol_medical_preferences:
    purpose:
      - 医療意思の整理
    fields:
      required:
        - life_support_preference
        - shared_scope_level
      optional:
        - emergency_contact_reference_id
        - hospitalization_contact_note
        - allergy_note
        - medical_history_note
        - communication_note
        - free_text_wish
        - summary_text
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    ui_rules:
      - disclaimer fixed display
      - 緊急兆候入力時 safety banner 優先
      - 保存時は新version作成前提
    validation:
      - shared_scope_level required
      - summary_text recommended short
    transitions:
      - save -> latest version refresh
      - inheritance/legal 導線は別画面

  eol_care_preferences:
    purpose:
      - 介護意思の整理
    fields:
      required:
        - preferred_care_place
        - shared_scope_level
      optional:
        - care_priority_note
        - cost_preference_note
        - family_message_note
        - free_text_wish
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    ui_rules:
      - disclaimer fixed display
      - 保存時は新version作成前提

  eol_funeral_preferences:
    purpose:
      - 葬儀/墓/供養希望の整理
    fields:
      required:
        - funeral_scale
        - shared_scope_level
      optional:
        - religion_or_style_note
        - burial_preference_note
        - memorial_note
        - estimated_cost_amount
        - estimated_cost_currency
        - contact_candidate_note
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    validation:
      - estimated_cost_amount positive if present

  eol_contract_registry:
    purpose:
      - 契約/サブスクの棚卸し
    fields:
      required:
        - contract_name
        - provider_name
        - contract_category
        - billing_cycle
        - cancellation_required
      optional:
        - amount_value
        - amount_currency
        - payment_method_note
        - contract_document_location_note
        - responsible_family_profile_id
        - status_note
        - share_with_family
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    notes:
      - subscription list は contract_category=subscription filter

  eol_digital_assets:
    purpose:
      - デジタル資産所在整理
    fields:
      required:
        - service_name
        - asset_category
        - location_hint_note
        - share_scope_level
      optional:
        - procedure_note
        - account_identifier_hint
    visible_for:
      - owner
      - family_viewer masked_shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    ui_rules:
      - 平文パスワード禁止警告
      - export masked only
      - disclaimer fixed display
    validation:
      - password-like pattern reject
      - full credential prohibited

  eol_document_registry:
    purpose:
      - 重要書類所在整理
    fields:
      required:
        - document_name
        - document_category
        - storage_type
        - storage_location_note
        - share_with_family
      optional:
        - related_family_profile_id
        - note_text
    visible_for:
      - owner
      - family_viewer shared_only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional

  eol_important_locations:
    purpose:
      - 何がどこにあるかの横断表示
    sections:
      - bank_related
      - contract_related
      - document_related
      - digital_related
    visible_for:
      - owner
      - family_viewer shared_only
    editable_for:
      - none
    notes:
      - source data は registry 群から集約表示

  eol_family_messages:
    purpose:
      - 家族向け文章メッセージ作成
    fields:
      required:
        - target_scope
        - title_text
        - body_text
        - open_condition
      optional:
        - summary_text
    visible_for:
      - owner
      - family_viewer open_condition satisfied only
      - delegated_editor conditional
    editable_for:
      - owner
      - delegated_editor conditional
    validation:
      - title_text max short
      - body_text long allowed but bounded

  eol_photo_audio_messages:
    purpose:
      - family_message 添付の参照
    upload_fields:
      required:
        - family_message_id
        - attachment_type
        - file
    visible_for:
      - owner
      - family_viewer attachment_allowed only
    editable_for:
      - owner
    notes:
      - 添付設計は別途 finalization 対象

  eol_handoff_pack:
    purpose:
      - 家族向け出力物の preview / generate
    fields:
      required:
        - document_type
        - include_categories
        - masking_policy
        - output_language_code
        - output_format
      optional:
        - private_message_excluded
        - summary_only flags
    visible_for:
      - owner
      - family_viewer generated list only if allowed
    editable_for:
      - owner
    ui_rules:
      - preview required before generate
      - masking confirmation required
      - disclaimer fixed display
      - reauthentication recommended

  eol_checklist:
    purpose:
      - 終活進捗確認
    fields:
      editable:
        - completion_status
        - note_text
      display:
        - checklist_category
        - item_code
        - item_label
        - priority_level
        - linked_entity reference
    visible_for:
      - owner
      - family_viewer shared_only limited
      - delegated_editor conditional

  eol_sharing_settings:
    purpose:
      - family_viewer / delegated_editor 権限設定
    fields:
      required:
        - grantee_family_profile_id
        - grantee_role
        - visible_categories_json
        - export_allowed
        - attachment_view_allowed
      optional:
        - editable_categories_json
        - expires_at
    visible_for:
      - owner only
    editable_for:
      - owner only
    validation:
      - family_viewer editable must be all false
      - delegated_editor editable subset of visible
      - S3_high explicit allow required

  eol_access_audit:
    purpose:
      - 監査ログ閲覧
    filters:
      - actor_role
      - action_type
      - target_entity_type
      - date_from
      - date_to
    visible_for:
      - owner only
    editable_for:
      - none

  eol_settings:
    purpose:
      - 表示言語、文字サイズ、通知等の設定
    fields:
      required:
        - language_code
        - font_scale
        - reminder_enabled
        - backup_enabled
      optional:
        - currency_code
        - reminder_cycle
    visible_for:
      - owner only
    editable_for:
      - owner only

screen_level_completion_note:
  - 本書で screen purpose / fields / visibility / editability / validation / transition の責務を固定した
  - 実装コードはまだ開始しない
