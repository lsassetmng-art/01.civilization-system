# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# PERSONAL LEGAL SUPPORT OPERATIONS GUIDE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: PersonalLegalSupport
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

operations:
  daily:
    - 新規相談メモ確認
    - 期限近接確認
  weekly:
    - リスクメモ見直し
    - 家族共有案件確認
  monthly:
    - 契約更新候補確認
    - 終活/相続入口メモ確認

ops_rules:
  - 運用は owner 主体
  - family は許可範囲閲覧
  - delegated_helper は将来拡張
