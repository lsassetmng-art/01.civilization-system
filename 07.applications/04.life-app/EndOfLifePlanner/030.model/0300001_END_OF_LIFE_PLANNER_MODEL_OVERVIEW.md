
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER MODEL OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: EndOfLifePlanner
schema: life
layer: 030.model
owner: Boss
prepared_by: Zero

layer_purpose:
  - モデルレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 終活準備案件の基本エンティティを定義する
  - 希望事項、医療/介護、資産/書類、連絡先、相談記録の関係を固定する
  - 家族共有は閲覧中心で扱う
