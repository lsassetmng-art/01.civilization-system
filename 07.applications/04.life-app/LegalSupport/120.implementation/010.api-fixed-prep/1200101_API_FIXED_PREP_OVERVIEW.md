
# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# API FIXED PREP OVERVIEW
# ============================================================

status: canonical-draft

goal:
  - UI と API の間でぶれない exact payload を固定する
  - case-centric 構造を API にもそのまま反映する
  - 共有、秘匿、出力に必要な権限制御情報を response に含める

api_groups:
  - case list / detail / create / update / archive
  - stakeholder list / create / update
  - timeline list / create / update
  - document list / create / update
  - consultation note list / create / update
  - task list / create / update
  - share grant / revoke / export

api_design_principles:
  - envelope を全 API で統一する
  - list response は pagination を必ず持つ
  - detail response は permissions と visibility を含む
  - create / update request は payload を明示ラップする
  - error structure を全 API で統一する
  - 法的結論は response に含めない
