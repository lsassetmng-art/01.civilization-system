# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER OPERATIONS GUIDE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

operations:
  weekly:
    - 計画メモ確認
  monthly:
    - 目標進捗見直し
    - 近いライフイベント確認
  quarterly:
    - 重要優先度見直し
    - 関連アプリ再確認
  yearly:
    - 人生計画全体見直し
    - 大型イベント棚卸し

ops_rules:
  - 運用は owner 主体
  - family は許可範囲閲覧
  - 長期変化に合わせて柔軟に修正できる構造にする
