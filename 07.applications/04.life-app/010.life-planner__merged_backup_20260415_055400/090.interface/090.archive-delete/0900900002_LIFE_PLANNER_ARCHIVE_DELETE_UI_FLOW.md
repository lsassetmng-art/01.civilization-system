# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER ARCHIVE DELETE UI FLOW
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 090.archive-delete
owner: Boss
prepared_by: Zero
schema: life

archive_flow:
  - life_plan_detail
  - open_plan_actions
  - choose_archive
  - archive_explanation_modal
  - confirm_archive
  - archived_success_message
  - archived_plan_view

archive_explanation_points:
  - plan remains saved
  - normal editing becomes restricted
  - history and review logs remain available

delete_flow:
  - life_plan_detail or life_plan_list
  - open_plan_actions
  - choose_delete
  - stronger_delete_warning_modal
  - confirm_delete
  - deleted_success_message
  - return_to_plan_list

delete_warning_points:
  - delete should be used only for unnecessary plans
  - archive is usually safer for meaningful plans
  - shared access will end with deletion

role_rules:
  owner:
    - may archive
    - may delete
  family_editor:
    - may not archive
    - may not delete
  family_viewer:
    - may not archive
    - may not delete
