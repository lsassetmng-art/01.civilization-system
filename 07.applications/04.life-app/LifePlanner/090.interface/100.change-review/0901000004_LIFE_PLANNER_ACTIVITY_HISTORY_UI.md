# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER ACTIVITY HISTORY UI
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 100.change-review
owner: Boss
prepared_by: Zero
schema: life

activity_history_views:
  - plan_activity_timeline
  - entity_activity_list
  - shared_update_summary

history_item_fields:
  - activity_time
  - actor_role
  - activity_type
  - target_summary
  - short_change_summary

display_rules:
  - owner sees richer context
  - shared roles see scoped history only
  - sensitive categories outside scope do not appear
  - review_log and activity history are related but not identical

difference_from_review_log:
  review_log:
    - explicit review reasoning record
  activity_history:
    - broader operational change trace
