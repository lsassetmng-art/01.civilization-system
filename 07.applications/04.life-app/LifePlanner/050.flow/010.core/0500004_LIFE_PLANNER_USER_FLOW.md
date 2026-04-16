# ============================================================
# LIFE PLANNER USER FLOW
# ============================================================

status: canonical-draft
system: civilization-system
application_layer: 07.applications/04.life-app
app: LifePlanner
schema: life
layer: 050.flow
subfolder: 010.core
owner: Boss
prepared_by: Zero

primary_flows:
  - plan_intake -> goal_input -> life_event_input -> milestone_setup -> review_cycle_register
  - plan_review -> gap_check -> linked_app_review -> summary_output
  - life_plan_review -> family_share_judgment -> explicit_summary_share

flow_rules:
  - 最初に life_plan を作る
  - 次に目標、イベント、マイルストーンを埋める
  - 見直しや共有は最後に明示操作で行う
