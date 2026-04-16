
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER CONSTITUTION OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 010.constitution
owner: Boss
prepared_by: Zero

layer_purpose:
  - 憲章レイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 人生計画主軸アプリとしての存在目的を固定する
  - 人生判断代替ではないことを最上位で固定する
  - 専門領域アプリとの役割分担を明文化する
