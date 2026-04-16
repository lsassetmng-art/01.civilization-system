# ============================================================
# TRAINING COACH ONBOARDING EXACT DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 050.flow
owner: Boss
prepared_by: Zero

purpose:
  - 初回利用時の onboarding 手順を exact に固定する
  - 必須入力と後回し可能入力を分離する
  - v1 で必要な最小導線を明確にする

onboarding_policy:
  - 初回起動で長すぎる入力は避ける
  - 安全性と継続性に必要な情報を優先する
  - 医療診断につながる深い入力は扱わない
  - 後から設定変更可能であることを前提にする

onboarding_steps:

step_1_welcome:
  purpose:
    - アプリの役割説明
    - 医療ではないことの明示
  required_inputs: []
  outputs:
    - onboarding_started = true

step_2_goal_selection:
  purpose:
    - 主目標を決める
  required_inputs:
    - goal_type
  optional_inputs:
    - custom_goal_name
  allowed_goal_types:
    - weight_loss
    - strength_up
    - flexibility_up
    - stamina_up
    - health_maintenance
    - custom
  persistence_targets:
    - life.training_goal
    - life.training_plan.goal_type candidate

step_3_level_and_time:
  purpose:
    - 無理のない初期難易度と時間帯を決める
  required_inputs:
    - difficulty_level
    - preferred_duration_minutes
  allowed_difficulty_level:
    - beginner
    - easy
    - normal
  allowed_duration_examples:
    - 5
    - 10
    - 15
    - 20
    - 30
  persistence_targets:
    - life.training_plan.difficulty_level
    - life.training_plan.default_duration_minutes

step_4_schedule_preferences:
  purpose:
    - 継続しやすい曜日と休息日を決める
  required_inputs:
    - schedule_type
    - preferred_training_days
  optional_inputs:
    - rest_day_rules
  allowed_schedule_types:
    - daily
    - weekly
  persistence_targets:
    - life.training_plan.schedule_type
    - life.training_plan_rest_rule

step_5_condition_baseline:
  purpose:
    - 初期状態の自己申告を受ける
  required_inputs:
    - body_condition
  optional_inputs:
    - fatigue_level
  allowed_body_condition:
    - very_good
    - good
    - normal
    - tired
    - bad
  persistence_targets:
    - life.fatigue_note

step_6_notification_choice:
  purpose:
    - 通知の初期設定
  required_inputs:
    - reminder_enabled
  optional_inputs:
    - preferred_notification_time
    - streak_notification_enabled
  persistence_targets:
    - notification preference store candidate
  notes:
    - 初期リリースでは app setting 側で保持候補
    - life schema 主保存対象かは将来詳細化可能

step_7_premium_education:
  purpose:
    - Premium 機能説明
  required_inputs: []
  outputs:
    - premium_upsell_seen = true
  notes:
    - 強制購入導線にしない

step_8_first_plan_proposal:
  purpose:
    - 直後に使える初期プランを提示する
  generated_outputs:
    - draft training_plan
    - draft training_plan_item list
  notes:
    - user 確定前は tentative 扱い候補
    - 保存時に正式 plan 化する

minimum_v1_completion:
  - step_1_welcome
  - step_2_goal_selection
  - step_3_level_and_time
  - step_4_schedule_preferences
  - step_5_condition_baseline

skip_allowed_in_v1:
  - step_6_notification_choice
  - step_7_premium_education

success_definition:
  - ユーザーが onboarding 完了後すぐ today_plan に進める
  - 初期 training_plan 候補が 1件作られる
  - 安全上の無理な初期提案をしない
