# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER SETTINGS SCREEN EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 110.settings-workbook
owner: Boss
prepared_by: Zero
schema: life

settings_sections:
  - notifications
  - display
  - review_support
  - language_currency
  - family_visibility_note

notifications_section:
  items:
    - important_event_upcoming_toggle
    - review_cycle_due_toggle
    - reflection_candidate_arrived_toggle
    - stale_plan_warning_toggle

display_section:
  items:
    - home_dashboard_focus_order
    - goal_list_default_sort
    - timeline_default_range

review_support_section:
  items:
    - monthly_review_prompt_toggle
    - annual_review_prompt_toggle
    - ai_assist_entry_toggle

language_currency_section:
  items:
    - app_language
    - preferred_currency_display
    - mixed_currency_display_rule_note

visibility_notes:
  - shared roles see limited settings view
  - owner sees full settings
