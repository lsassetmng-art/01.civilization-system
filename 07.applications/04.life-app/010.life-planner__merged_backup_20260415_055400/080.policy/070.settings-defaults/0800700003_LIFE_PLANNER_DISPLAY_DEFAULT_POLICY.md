# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER DISPLAY DEFAULT POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 070.settings-defaults
owner: Boss
prepared_by: Zero
schema: life

display_defaults:
  home_dashboard:
    default_focus:
      - review_needed
      - upcoming_events
      - goal_progress

  timeline_view:
    default_range:
      - near_to_mid_term emphasis

  goal_list:
    default_sort:
      - priority_desc

  event_list:
    default_sort:
      - chronological_asc

  dashboard_density:
    mobile:
      - compact
    tablet_pc:
      - richer summary blocks

privacy_related_defaults:
  - hidden categories remain fully hidden for shared roles
  - do not show masked pseudo-entries by default
