# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# PAYLOAD OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 020.payload
owner: Boss
prepared_by: Zero

purpose:
  - LifePlannerの request / response exact payload を固定する
  - 画面と操作に対して payload 形状を安定化する
  - 実装前に命名揺れと項目不足を防ぐ

payload_groups:
  - plan
  - goal
  - timeline
  - review_reflection
  - family_share
  - scenario
  - error

principles:
  - JSON payload を前提とする
  - snake_case を標準とする
  - id は string UUID を前提とする
  - 金額は amount_minor + currency_code で表現する
  - 日時は timezone を含む ISO-8601 string を使う
  - response は status / data / meta の3系統を基本とする
