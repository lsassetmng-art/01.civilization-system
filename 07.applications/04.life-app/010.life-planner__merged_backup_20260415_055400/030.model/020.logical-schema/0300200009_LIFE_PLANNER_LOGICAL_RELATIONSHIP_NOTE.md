# ============================================================
# LIFE PLANNER LOGICAL RELATIONSHIP NOTE
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 020.logical-schema
owner: Boss
prepared_by: Zero
schema: life

root_aggregate:
  - life.life_plan

direct_children:
  - life.life_goal
  - life.life_event_timeline
  - life.life_review_log
  - life.life_reflection_candidate
  - life.life_shared_member
  - life.life_scenario
  - life.life_scenario_decision

nested_children:
  - life.life_milestone -> life.life_goal

relationship_summary:
  - 1 life_plan has many life_goal
  - 1 life_goal has many life_milestone
  - 1 life_plan has many life_event_timeline
  - 1 life_plan has many life_review_log
  - 1 life_plan has many life_reflection_candidate
  - 1 life_plan has many life_shared_member
  - 1 life_plan has many life_scenario
  - 1 life_plan has many life_scenario_decision

derived_examples:
  - next_event_date derived from life.life_event_timeline
  - total_goal_count derived from life.life_goal
  - review_count derived from life.life_review_log
  - pending_candidate_count derived from life.life_reflection_candidate

implementation_note:
  - 物理DDL段階では index, unique, check constraint を追加検討する
  - まずは論理責務の固定を優先する
