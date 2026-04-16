# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LOCALIZATION DEVICE OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 110.infrastructure
subfolder: 020.localization-device
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 多言語、多通貨、マルチデバイスの設計ルールを固定する
  - 保存値と表示値の責務を分離する
  - 端末差で機能差を作らない前提を明文化する
