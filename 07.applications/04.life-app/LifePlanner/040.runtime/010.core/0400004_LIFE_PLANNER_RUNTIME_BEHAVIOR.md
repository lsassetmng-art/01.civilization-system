# ============================================================
# LIFE PLANNER RUNTIME BEHAVIOR
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 040.runtime
subfolder: 010.core
owner: Boss
prepared_by: Zero

runtime_events:
  - create_life_plan
  - add_life_goal
  - add_life_event
  - add_milestone
  - attach_note
  - register_review_cycle
  - generate_plan_summary
  - launch_ai_support
  - trigger_review_notification

runtime_rules:
  - 通知は in_app を基本とする
  - 人生結論の自動判断はしない
  - AI は整理支援時のみ動作する
