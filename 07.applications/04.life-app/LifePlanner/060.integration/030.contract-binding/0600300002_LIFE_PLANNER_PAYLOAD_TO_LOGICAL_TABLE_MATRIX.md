# ============================================================
# LIFE PLANNER PAYLOAD TO LOGICAL TABLE MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 030.contract-binding
owner: Boss
prepared_by: Zero
schema: life

matrix:

  plan_operations:
    - operation_id: life_plan.create
      target_tables:
        - life.life_plan

    - operation_id: life_plan.list
      target_tables:
        - life.life_plan

    - operation_id: life_plan.detail
      target_tables:
        - life.life_plan
        - life.life_goal
        - life.life_event_timeline
        - life.life_review_log

    - operation_id: life_plan.update
      target_tables:
        - life.life_plan

  goal_operations:
    - operation_id: life_goal.create
      target_tables:
        - life.life_goal

    - operation_id: life_goal.list
      target_tables:
        - life.life_goal

    - operation_id: life_goal.update
      target_tables:
        - life.life_goal

    - operation_id: life_goal.milestone.create
      target_tables:
        - life.life_milestone

  timeline_operations:
    - operation_id: life_timeline.event.create
      target_tables:
        - life.life_event_timeline

    - operation_id: life_timeline.event.list
      target_tables:
        - life.life_event_timeline
        - life.life_goal

    - operation_id: life_timeline.event.update
      target_tables:
        - life.life_event_timeline

  review_and_reflection_operations:
    - operation_id: life_review.create
      target_tables:
        - life.life_review_log

    - operation_id: life_reflection_candidate.list
      target_tables:
        - life.life_reflection_candidate

    - operation_id: life_reflection_candidate.apply
      target_tables:
        - life.life_reflection_candidate
        - life.life_review_log
        - life.life_plan or life.life_goal or life.life_event_timeline

    - operation_id: life_reflection_candidate.dismiss
      target_tables:
        - life.life_reflection_candidate

  family_share_operations:
    - operation_id: life_share.member.invite
      target_tables:
        - life.life_shared_member

    - operation_id: life_share.member.list
      target_tables:
        - life.life_shared_member

    - operation_id: life_share.scope.update
      target_tables:
        - life.life_shared_member

  scenario_operations:
    - operation_id: life_scenario.create
      target_tables:
        - life.life_scenario

    - operation_id: life_scenario.compare
      target_tables:
        - life.life_scenario
      note:
        - compare結果は derived

    - operation_id: life_scenario.decision.apply
      target_tables:
        - life.life_scenario_decision
