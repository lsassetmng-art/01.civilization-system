# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT LIST FILTER UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

ui_policy:

  legal_case_list:
    quick_filters:
      - active_only
      - with_deadline
      - family_shared
      - unresolved_documents
    advanced_filters:
      - category
      - status
      - priority
      - visibility_scope
      - primary_app_route
    sorts:
      - updated_at_desc default
      - created_at_desc
      - priority_desc
      - title_asc
      - next_deadline_date_asc

  document_screen:
    quick_filters:
      - unresolved_only
      - important_only
      - shared_only
    advanced_filters:
      - document_category
      - possession_status
      - submission_status
    sorts:
      - important_flag_desc default
      - document_name_asc
      - updated_at_desc

  deadline_screen:
    quick_filters:
      - upcoming_only
      - urgent_only
      - notification_enabled_only
    advanced_filters:
      - deadline_type
      - urgency_level
    sorts:
      - deadline_date_asc default
      - urgency_level_desc
      - updated_at_desc

ui_rules:
  - quick filter を先、advanced filter を後ろに置く
  - default sort は作業優先順を意識する
  - filter 状態は画面内で見える化する
