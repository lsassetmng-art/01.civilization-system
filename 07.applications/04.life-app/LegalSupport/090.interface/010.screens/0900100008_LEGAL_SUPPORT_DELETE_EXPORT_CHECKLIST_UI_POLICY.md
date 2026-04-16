# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT DELETE EXPORT CHECKLIST UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

ui_policies:

  soft_delete_ui:
    - 削除ボタンは owner のみ表示
    - 削除前に「復元可能」であることを表示
    - 削除理由入力は任意
    - 削除後に短時間 undo を表示してもよい

  restore_ui:
    - 一覧既定表示では soft deleted を出さない
    - 復元一覧は別導線にする
    - 復元は owner のみ可能

  export_ui:
    - 含める section を明示選択
    - 既定除外項目を表示で説明
    - family export では expense を既定除外表示
    - assumption_text は既定除外表示

  checklist_ui:
    - category 選択後に対応 checklist を上から表示
    - checklist 完了率を表示
    - checklist は legal conclusion ではなく preparation guide と明記する

ui_guard_messages:
  delete_message:
    - この項目は削除ではなく復元可能な非表示になります
  export_message:
    - 出力対象に含まれる内容を確認してください
  checklist_message:
    - これは相談準備の確認項目です
