# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT SUMMARY EXPORT HANDOFF UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

ui_principles:
  - summary / export / handoff は似て見えても導線を分ける
  - summary は閲覧中心
  - export は共有資料化
  - handoff は他アプリ移送であることを明示する

screen_roles:
  summary_preview_screen:
    purpose:
      - AI要約や整理要約の確認
  export_profile_screen:
    purpose:
      - PDF出力プロファイル選択
  handoff_preview_screen:
    purpose:
      - 他アプリへ渡る payload の確認

ui_rules:
  - profile 名を大きく表示する
  - 含まれる section と除外される section を両方表示する
  - handoff では target app を明示する
  - family export では family 向け制限がかかることを明示する
