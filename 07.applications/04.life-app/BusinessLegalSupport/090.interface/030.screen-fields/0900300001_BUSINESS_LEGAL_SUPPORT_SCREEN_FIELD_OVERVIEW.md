
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# BUSINESS LEGAL SUPPORT SCREEN FIELD OVERVIEW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: BusinessLegalSupport
schema: life
layer: 090.interface
subfolder: 030.screen-fields
owner: Boss
prepared_by: Zero

purpose:
  - BusinessLegalSupport の画面項目を固定する
  - payload 設計と UI 表示項目を対応づける
  - 実装前に一覧画面、詳細画面、相談準備画面の粒度を確定する

screen_design_principles:
  - issue detail を主ハブ画面にする
  - dashboard は「今見るべきもの」を優先表示する
  - list は短く、detail は section 分割する
  - share/export は主導線ではなく副導線に置く
  - 法的助言ではない表示を相談系画面で維持する

field_presentation_rules:
  - status, priority, due hint は一覧で先頭優先
  - 長文メモは一覧に全文出さない
  - severity は色だけでなくラベルでも示す
  - 金額は amount_value + currency_code で表示する
