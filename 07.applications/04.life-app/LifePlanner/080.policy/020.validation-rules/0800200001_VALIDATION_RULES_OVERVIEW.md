
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# VALIDATION RULES OVERVIEW
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 020.validation-rules
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 入力可能条件を設計段階で固定する
  - 不正データ保存を防ぐ
  - UIブロック条件と payload error を整合させる

validation_levels:
  - ui level
  - payload level
  - logical model level

priority:
  - まず保存禁止条件を明確化する
  - 次に UI で事前ブロックする
  - 最後に error code と結び付ける
