# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LIFE PLANNER AGE VIEW AND SUMMARY DISPLAY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 040.dashboard-display
owner: Boss
prepared_by: Zero
schema: life

age_view_purpose:
  - 年齢軸で人生設計を見やすくする
  - イベントと目標を年齢帯で整理する

display_modes:
  - current_age_to_plus_5
  - plus_10
  - plus_20
  - full_range

age_view_sections:
  - age_band_header
  - related_goals
  - related_events
  - estimated_cost_summary
  - review_note

derived_rules:
  - 年齢は current age base の表示値であり保持値ではない
  - actual stored values are event dates and plan period
