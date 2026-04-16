# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER RESTORE UI FLOW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 090.archive-delete
owner: Boss
prepared_by: Zero
schema: life

restore_flow:
  - archived_plan_list_or_detail
  - open_plan_actions
  - choose_restore
  - restore_confirmation_modal
  - restore_success_message
  - active_plan_detail

restore_points:
  - restoring returns plan to active
  - editing becomes available again for owner
  - shared access follows current share settings, not historical assumptions

ui_rules:
  - archived items must be visually distinguishable
  - restore entry is owner-only
