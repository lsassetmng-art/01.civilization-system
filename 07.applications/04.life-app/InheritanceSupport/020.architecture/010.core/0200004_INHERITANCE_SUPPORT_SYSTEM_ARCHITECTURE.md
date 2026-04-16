
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# INHERITANCE SUPPORT SYSTEM ARCHITECTURE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 020.architecture
subfolder: 010.core
owner: Boss
prepared_by: Zero

architecture_blocks:
  - inheritance_case_workspace
  - family_and_heir_area
  - asset_liability_note_area
  - document_ledger_area
  - deadline_center
  - consultation_note_area
  - family_share_output
  - ai_support_assist
  - lifeos_bridge

bridge_rules:
  - LifeOS 連携は終活、家計、人生計画との接続を優先
  - 外部専門家相談は明示出力のみ
  - 共通部品の詳細定義は別正本を参照する
