# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER SCREEN ACCESS RULES
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 030.access-control
owner: Boss
prepared_by: Zero
schema: life

screen_rules:
  - rule_id: SCR-001
    rule:
      - home は共有範囲内の要約のみ表示する

  - rule_id: SCR-002
    rule:
      - life_plan_detail の基本情報編集は owner のみ

  - rule_id: SCR-003
    rule:
      - goal / milestone / timeline の編集は family_editor に許可できるが shared scope 内のみ

  - rule_id: SCR-004
    rule:
      - family_share_setting は owner 専用画面

  - rule_id: SCR-005
    rule:
      - scenario compare は Familyプラン専用
      - family_editor は最終採用判断を行えない

  - rule_id: SCR-006
    rule:
      - reflection candidate の apply / dismiss は owner のみ

  - rule_id: SCR-007
    rule:
      - family_viewer は全画面で編集不可

  - rule_id: SCR-008
    rule:
      - sensitive categories は allow flag + share category 条件を両方満たす場合のみ表示

ui_behavior_note:
  - 権限不足時は hidden を基本とする
  - プラン不足時は pricing_guide 導線を出す
  - shared scope 外は partially masked ではなく非表示を基本とする
