
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# APP SECURITY OVERVIEW
# ============================================================

status: canonical-draft
phase: design-only

audit_targets:
  - share started
  - share revoked
  - sensitive document viewed
  - export generated
  - permission changed

security_viewpoints:
  - 案件単位保護
  - 書類単位保護
  - 高秘匿上書き保護
  - 共有設定変更監査
  - export 利用監査
