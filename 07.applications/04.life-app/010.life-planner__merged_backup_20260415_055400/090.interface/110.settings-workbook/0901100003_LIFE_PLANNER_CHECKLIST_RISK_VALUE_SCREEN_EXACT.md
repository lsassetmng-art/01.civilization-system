# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER CHECKLIST RISK VALUE SCREEN EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 110.settings-workbook
owner: Boss
prepared_by: Zero
schema: life

screen_01_future_checklist:
  sections:
    - category_tabs
    - checklist_items
    - status_filter
    - convert_to_goal_action
    - convert_to_event_action

  item_fields:
    - checklist_item_title
    - related_category
    - checklist_status
    - note
    - conversion_recommendation

screen_02_risk_list:
  sections:
    - risk_summary
    - risk_items
    - impact_filter
    - category_filter
    - link_to_goal_or_event

  item_fields:
    - risk_title
    - risk_description
    - impact_level
    - urgency_level
    - preparedness_level
    - related_category
    - linked_goal_or_event

screen_03_value_work:
  sections:
    - value_theme_picker
    - priority_ordering
    - short_reflection_note
    - scenario_compare_link

  item_fields:
    - value_theme
    - priority_rank
    - note
