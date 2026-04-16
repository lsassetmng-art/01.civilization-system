
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# END OF LIFE PLANNER ROLE AND PERMISSION ARCHITECTURE
# ============================================================

status: canonical-draft
phase: L1-spec-placement

roles:
  owner:
    - 全カテゴリ管理
    - 共有先設定
    - 出力実行
    - 監査ログ閲覧
  family_viewer:
    - owner許可範囲のみ閲覧
    - 原則編集不可
  delegated_editor:
    - owner許可範囲のみ編集
    - 共有設定変更不可
    - handoff_document生成不可

fixed_rules:
  - ownerのみが共有先追加/削除できる
  - ownerのみが権限変更できる
  - family_viewerは編集不可
  - delegated_editorは共有設定変更不可
  - access_audit_log は owner 専用
