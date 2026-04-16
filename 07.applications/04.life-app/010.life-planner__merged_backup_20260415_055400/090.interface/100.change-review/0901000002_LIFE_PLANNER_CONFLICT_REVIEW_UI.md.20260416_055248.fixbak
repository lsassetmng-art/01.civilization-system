# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER CONFLICT REVIEW UI
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 100.change-review
owner: Boss
prepared_by: Zero
schema: life

conflict_review_screen:
  sections:
    - conflict_title
    - changed_entity_summary
    - latest_value_block
    - your_input_block
    - action_choices

action_choices:
  - reload_latest_and_edit_again
  - keep_as_proposal_if_supported_later
  - cancel

copy_direction:
  title:
    - この内容は最新ではありません
  body:
    - 他の更新が先に反映されています。最新の内容を確認してから続けてください。

ui_rules:
  - show latest value before user value
  - do not auto-merge major structural changes
  - owner-only restrictions remain explicit
