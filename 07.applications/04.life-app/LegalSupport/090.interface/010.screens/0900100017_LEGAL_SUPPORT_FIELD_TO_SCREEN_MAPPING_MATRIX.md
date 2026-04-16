# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT FIELD TO SCREEN MAPPING MATRIX
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens
schema: life

purpose:
  - entity field と screen の対応関係を固定する
  - どの画面がどの項目を表示/編集するかを明確化する
  - 実装前の UI / payload 接続確認に使う

mapping_matrix:

  legal_case:
    primary_screens:
      - legal_case_list
      - legal_case_detail
      - dashboard
      - family_dashboard
    key_fields:
      title:
        shown_on:
          - legal_case_list
          - legal_case_detail
          - dashboard
          - family_dashboard
        editable_on:
          - legal_case_detail
      category:
        shown_on:
          - legal_case_list
          - legal_case_detail
        editable_on:
          - legal_case_detail
      status:
        shown_on:
          - legal_case_list
          - legal_case_detail
          - dashboard
          - family_dashboard
        editable_on:
          - legal_case_detail
      priority:
        shown_on:
          - legal_case_list
          - legal_case_detail
          - dashboard
          - family_dashboard
        editable_on:
          - legal_case_detail
      summary:
        shown_on:
          - legal_case_detail
          - export_profile_screen
          - summary_preview_screen
        editable_on:
          - legal_case_detail
      visibility_scope:
        shown_on:
          - legal_case_detail
          - family_share_setting
        editable_on:
          - family_share_setting
      family_share_enabled:
        shown_on:
          - legal_case_detail
          - family_share_setting
        editable_on:
          - family_share_setting

  fact_timeline:
    primary_screens:
      - fact_timeline_screen
      - legal_case_detail
      - summary_preview_screen
      - export_profile_screen
    key_fields:
      event_date:
        shown_on:
          - fact_timeline_screen
          - summary_preview_screen
        editable_on:
          - fact_timeline_screen
      event_type:
        shown_on:
          - fact_timeline_screen
          - summary_preview_screen
        editable_on:
          - fact_timeline_screen
      fact_text:
        shown_on:
          - fact_timeline_screen
          - summary_preview_screen
          - handoff_preview_screen
        editable_on:
          - fact_timeline_screen
      assumption_text:
        shown_on:
          - fact_timeline_screen
          - owner-only summary preview
        editable_on:
          - fact_timeline_screen
      verification_status:
        shown_on:
          - fact_timeline_screen
          - summary_preview_screen
        editable_on:
          - fact_timeline_screen

  stakeholder:
    primary_screens:
      - stakeholder_screen
      - legal_case_detail
      - family_share_masking_preview_screen
      - consultation_prep_preview
    key_fields:
      stakeholder_type:
        shown_on:
          - stakeholder_screen
          - consultation_prep_preview
        editable_on:
          - stakeholder_screen
      display_name:
        shown_on:
          - stakeholder_screen
          - consultation_prep_preview
          - family_share_masking_preview_screen
        editable_on:
          - stakeholder_screen
      relation_to_case:
        shown_on:
          - stakeholder_screen
          - consultation_prep_preview
        editable_on:
          - stakeholder_screen
      contact_note:
        shown_on:
          - stakeholder_screen
        editable_on:
          - stakeholder_screen
      share_visibility:
        shown_on:
          - stakeholder_screen
          - family_share_masking_preview_screen
        editable_on:
          - stakeholder_screen

  document_item:
    primary_screens:
      - document_screen
      - legal_case_detail
      - export_profile_screen
      - family_share_masking_preview_screen
    key_fields:
      document_category:
        shown_on:
          - document_screen
          - export_profile_screen
        editable_on:
          - document_screen
      document_name:
        shown_on:
          - document_screen
          - dashboard
          - family_dashboard
          - export_profile_screen
        editable_on:
          - document_screen
      possession_status:
        shown_on:
          - document_screen
          - dashboard
          - family_dashboard
        editable_on:
          - document_screen
      submission_status:
        shown_on:
          - document_screen
          - dashboard
          - family_dashboard
        editable_on:
          - document_screen
      important_flag:
        shown_on:
          - document_screen
          - dashboard
        editable_on:
          - document_screen
      shared_flag:
        shown_on:
          - document_screen
          - family_share_masking_preview_screen
        editable_on:
          - document_screen
      confidentiality_level:
        shown_on:
          - document_screen
          - family_share_masking_preview_screen
        editable_on:
          - document_screen
      acquisition_due_date:
        shown_on:
          - document_screen
        editable_on:
          - document_screen
      submission_due_date:
        shown_on:
          - document_screen
        editable_on:
          - document_screen

  question_list:
    primary_screens:
      - question_screen
      - legal_case_detail
      - consultation_prep_preview
    key_fields:
      question_text:
        shown_on:
          - question_screen
          - consultation_prep_preview
          - summary_preview_screen
        editable_on:
          - question_screen
      question_status:
        shown_on:
          - question_screen
          - dashboard
        editable_on:
          - question_screen
      priority:
        shown_on:
          - question_screen
          - dashboard
          - consultation_prep_preview
        editable_on:
          - question_screen

  consultation_note:
    primary_screens:
      - consultation_history_screen
      - legal_case_detail
      - summary_preview_screen
    key_fields:
      consultation_type:
        shown_on:
          - consultation_history_screen
        editable_on:
          - consultation_history_screen
      consultation_date:
        shown_on:
          - consultation_history_screen
        editable_on:
          - consultation_history_screen
      counterpart_name:
        shown_on:
          - consultation_history_screen
        editable_on:
          - consultation_history_screen
      summary:
        shown_on:
          - consultation_history_screen
          - summary_preview_screen
        editable_on:
          - consultation_history_screen
      pending_items:
        shown_on:
          - consultation_history_screen
        editable_on:
          - consultation_history_screen
      next_confirmation_points:
        shown_on:
          - consultation_history_screen
          - dashboard
        editable_on:
          - consultation_history_screen

  action_item:
    primary_screens:
      - action_deadline_screen
      - dashboard
      - family_dashboard
      - export_profile_screen
    key_fields:
      title:
        shown_on:
          - action_deadline_screen
          - dashboard
          - family_dashboard
          - export_profile_screen
        editable_on:
          - action_deadline_screen
      action_status:
        shown_on:
          - action_deadline_screen
          - family_dashboard
        editable_on:
          - action_deadline_screen
      due_date:
        shown_on:
          - action_deadline_screen
          - dashboard
          - family_dashboard
          - export_profile_screen
        editable_on:
          - action_deadline_screen

  deadline_item:
    primary_screens:
      - action_deadline_screen
      - dashboard
      - family_dashboard
      - export_profile_screen
    key_fields:
      deadline_type:
        shown_on:
          - action_deadline_screen
          - dashboard
          - family_dashboard
        editable_on:
          - action_deadline_screen
      deadline_date:
        shown_on:
          - action_deadline_screen
          - dashboard
          - family_dashboard
          - export_profile_screen
        editable_on:
          - action_deadline_screen
      urgency_level:
        shown_on:
          - action_deadline_screen
          - dashboard
          - family_dashboard
        editable_on:
          - action_deadline_screen
      notification_enabled:
        shown_on:
          - action_deadline_screen
        editable_on:
          - action_deadline_screen

  expense_record:
    primary_screens:
      - expense_screen_future
      - owner_dashboard
      - export_profile_screen_owner_optional
    key_fields:
      expense_type:
        shown_on:
          - expense_screen_future
        editable_on:
          - expense_screen_future
      amount:
        shown_on:
          - expense_screen_future
          - owner-only summary preview
        editable_on:
          - expense_screen_future
      currency_code:
        shown_on:
          - expense_screen_future
        editable_on:
          - expense_screen_future
      paid_at:
        shown_on:
          - expense_screen_future
        editable_on:
          - expense_screen_future

  family_share_membership:
    primary_screens:
      - family_share_setting
    key_fields:
      membership_status:
        shown_on:
          - family_share_setting
        editable_on:
          - system via invitation flow
      invite_target_label:
        shown_on:
          - family_share_setting
        editable_on:
          - family_share_setting
      permission_role:
        shown_on:
          - family_share_setting
        editable_on:
          - fixed initial value

mapping_rules:
  - legal_case_detail is hub
  - family dashboard never edits fields
  - owner-only fields must not leak into family preview screens
  - export/handoff preview screens show selected output fields, not raw full entity data
