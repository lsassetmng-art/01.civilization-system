# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# PERSONAL LEGAL SUPPORT SYSTEM ARCHITECTURE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 020.architecture
subfolder: 010.core
owner: Boss
prepared_by: Zero

architecture_blocks:
  - case_workspace
  - contract_document_area
  - deadline_center
  - consultation_note_area
  - risk_tracking_area
  - family_share_output
  - ai_support_assist
  - lifeos_bridge
  - business_legal_bridge

bridge_rules:
  - LifeOS 連携は予定、家計、終活入口との接続を優先
  - BusinessLegalSupport 連携は明示操作のみ
  - 共通部品の詳細定義は別正本を参照する
