# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER APPLICATION ARCHITECTURE
# ============================================================

actors:
  - owner
  - family_viewer
  - family_editor

main_modules:
  - plan management
  - timeline management
  - goal management
  - review log management
  - family sharing management
  - scenario comparison
  - reflection candidate intake

architecture_rules:
  - ownerが最終確定権限を持つ
  - family_editorは編集可能だが自動確定不可
  - family_viewerは閲覧のみ
  - 他アプリ情報は反映候補として保持する
