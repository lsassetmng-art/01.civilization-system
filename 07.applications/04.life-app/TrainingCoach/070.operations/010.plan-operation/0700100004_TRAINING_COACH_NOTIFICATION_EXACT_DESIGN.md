# ============================================================
# TRAINING COACH NOTIFICATION EXACT DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - v1 通知の種類、発火条件、payload、停止条件を固定する
  - 継続支援と安全性の両立を図る
  - 過剰通知を避ける

notification_policy:
  - 初期は push / in-app 表示の意味設計のみ固定する
  - 医療判断に見える通知は行わない
  - 疲労度が高い場合は鼓舞通知より休息寄り文言を優先する
  - premium 限定通知は明示する

notification_types:

TC-NOTI-0001:
  name: scheduled_session_reminder
  purpose:
    - 本日の予定運動を思い出させる
  trigger:
    - target_date = today
    - reminder_enabled = true
    - execution_status = scheduled
  timing_rule:
    - preferred_notification_time if set
    - otherwise app default time candidate
  audience:
    - free
    - premium
  payload:
    - notification_code
    - user_id
    - target_date
    - session_id
    - plan_name
    - message_key

TC-NOTI-0002:
  name: streak_encouragement
  purpose:
    - 連続実施を促す
  trigger:
    - streak_notification_enabled = true
    - today no completion yet
    - streak_days >= 1
  audience:
    - free
    - premium
  payload:
    - notification_code
    - user_id
    - streak_days
    - message_key

TC-NOTI-0003:
  name: missed_session_followup
  purpose:
    - 未実施を軽くフォローする
  trigger:
    - scheduled session remained not completed
    - end_of_day or configured late window
  audience:
    - free
    - premium
  payload:
    - notification_code
    - user_id
    - session_id
    - target_date
    - message_key

TC-NOTI-0004:
  name: rest_recommended_notice
  purpose:
    - 休息推奨を伝える
  trigger:
    - body_condition = bad
    - or difficulty rule returns rest_recommended
  audience:
    - free
    - premium
  payload:
    - notification_code
    - user_id
    - body_condition
    - message_key
  priority:
    - higher_than encouragement

TC-NOTI-0005:
  name: premium_feature_hint
  purpose:
    - Premium 機能価値の説明
  trigger:
    - free user
    - specific premium-only interaction or screen exposure
  audience:
    - free only
  payload:
    - notification_code
    - user_id
    - feature_code
    - message_key
  note:
    - 頻度制御が必要

suppression_rules:
  - same notification_code + same target context の重複送信禁止
  - rest_recommended_notice が有効な日は streak_encouragement を抑制候補
  - completed session 後は scheduled_session_reminder を送らない
  - user disabled notifications の場合は全停止

message_tone_policy:
  - pressure ではなく support
  - guilt を与えない
  - safety が必要な場合は運動促進より安全文言優先

future_later:
  - family shared reminder
  - wearable real-time based reminder
  - trainer-linked reminder
