# ============================================================
# LIFE PLANNER INTERFACE SPEC
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 090.interface
subfolder: 010.core
owner: Boss
prepared_by: Zero

screens:
  - dashboard
  - life_plan_list
  - life_plan_detail
  - goal_view
  - life_event_timeline
  - milestone_view
  - review_center
  - summary_output
  - family_share_view
  - settings

ui_rules:
  - 計画中心ナビゲーション
  - 時系列と優先度を両方見せる
  - 重要度は色ではなくラベルでも表現
  - 専門判断代替ではない表示を必要箇所に持つ
