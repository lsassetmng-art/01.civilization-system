# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# TRAINING COACH SCREEN CONTRACT MATRIX
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 090.interface
owner: Boss
prepared_by: Zero

matrix:
  - screen: dashboard
    input:
      - user_id
      - target_date
    output:
      - today_plan_cards
      - streak_days
      - condition_snapshot
      - premium_status

  - screen: today_plan
    input:
      - user_id
      - target_date
    output:
      - sessions
      - recommendation_badge

  - screen: plan_editor
    input:
      - plan_id|null
      - editable_plan_payload
    output:
      - saved_plan_id
      - updated_at

  - screen: session_execution
    input:
      - session_id
    output:
      - exercise_items
      - guide_summary
      - safety_notice_list

  - screen: completion_result
    input:
      - session_id
      - completion_result
      - actual_duration_minutes
    output:
      - achievement_rate
      - earned_streak_increment
      - next_recommendation

  - screen: guide_viewer
    input:
      - exercise_item_id
      - locale
    output:
      - guide_content

  - screen: premium_upgrade
    input:
      - locale
      - currency_code
    output:
      - localized_price_text
      - feature_list
