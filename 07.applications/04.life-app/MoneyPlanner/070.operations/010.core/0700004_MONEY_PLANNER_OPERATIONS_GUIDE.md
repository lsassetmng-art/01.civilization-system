# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# MONEY PLANNER OPERATIONS GUIDE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: MoneyPlanner
schema: life
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

operations:
  monthly:
    - 収入/支出計画見直し
    - 目的別資金の進捗確認
  quarterly:
    - 資産/負債棚卸し
    - 大型イベント費用見直し
  yearly:
    - 全体計画再確認
    - 老後/住宅/教育計画見直し

ops_rules:
  - 運用は owner 主体
  - family は許可範囲閲覧
  - 数字の更新だけでなく前提条件の見直しも促す
