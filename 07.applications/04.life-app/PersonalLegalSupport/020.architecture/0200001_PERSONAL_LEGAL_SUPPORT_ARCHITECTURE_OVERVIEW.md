# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# PERSONAL LEGAL SUPPORT ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 020.architecture
owner: Boss
prepared_by: Zero

layer_purpose:
  - アーキテクチャレイヤの全体像を定義する
  - 共通部品詳細は別管理とし、アプリ固有責務の配置を固定する

summary:
  - 案件、契約、期限、添付、相談メモを中心に構成する
  - LifeOS 側連携と BusinessLegalSupport への明示橋渡しを持つ
  - 共通部品は外部正本を参照する前提にする
