# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。


# LIFE PLANNER REVIEW AND PROGRESS SCORE DISPLAY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 120.indicator-score
owner: Boss
prepared_by: Zero
schema: life

progress_display_policy:
  - prefer counts and states over opaque scores
  - simple completion ratio can be shown when denominator is clear
  - do not imply life quality score or human worth score

allowed_summary_forms:
  - completed_goal_count / total_goal_count
  - in_progress_goal_count
  - pending_candidate_count
  - review_due_flag

optional_score_like_forms:
  - preparedness_indicator:
      meaning:
        - rough support signal only
      caution:
        - do not display as scientific precision

  - review_attention_level:
      meaning:
        - low / medium / high attention
      caution:
        - driven by visible triggers only

prohibited_forms:
  - overall life score
  - happiness score
  - certainty score for future outcome
