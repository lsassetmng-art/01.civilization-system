# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# INHERITANCE SUPPORT OPERATIONS GUIDE
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: InheritanceSupport
layer: 070.operations
subfolder: 010.core
owner: Boss
prepared_by: Zero

operations:
  monthly:
    - 相続準備メモ見直し
    - 資産/負債メモ更新確認
  quarterly:
    - 家族共有案件確認
    - 重要書類の所在確認
  yearly:
    - 遺言/贈与メモ見直し
    - 専門家相談要否確認

ops_rules:
  - 運用は owner 主体
  - family は許可範囲閲覧
  - 重要書類の現物所在確認を別途促す
