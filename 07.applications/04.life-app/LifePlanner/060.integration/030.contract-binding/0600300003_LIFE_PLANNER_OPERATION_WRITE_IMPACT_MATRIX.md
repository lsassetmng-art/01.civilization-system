# ============================================================
# LIFE PLANNER OPERATION WRITE IMPACT MATRIX
# ============================================================

status: draft
system: LifePlanner
layer: 060.integration
subfolder: 030.contract-binding
owner: Boss
prepared_by: Zero
schema: life

write_impact_matrix:

  - operation_id: life_plan.create
    write_type: create
    write_targets:
      - life.life_plan
    side_effects:
      - none

  - operation_id: life_goal.create
    write_type: create
    write_targets:
      - life.life_goal
    side_effects:
      - plan detail derived summary changes

  - operation_id: life_goal.update
    write_type: update
    write_targets:
      - life.life_goal
    side_effects:
      - goal summary changes
      - cost summary changes

  - operation_id: life_goal.milestone.create
    write_type: create
    write_targets:
      - life.life_milestone
    side_effects:
      - milestone count changes

  - operation_id: life_timeline.event.create
    write_type: create
    write_targets:
      - life.life_event_timeline
    side_effects:
      - next event derived changes
      - plan detail event summary changes

  - operation_id: life_timeline.event.update
    write_type: update
    write_targets:
      - life.life_event_timeline
    side_effects:
      - next event derived changes
      - cost summary changes

  - operation_id: life_review.create
    write_type: create
    write_targets:
      - life.life_review_log
    side_effects:
      - review count changes
      - last reviewed info changes

  - operation_id: life_reflection_candidate.apply
    write_type: multi_write
    write_targets:
      - life.life_reflection_candidate
      - life.life_review_log
      - one_of:
          - life.life_plan
          - life.life_goal
          - life.life_event_timeline
    side_effects:
      - pending candidate count changes
      - review summary changes
      - affected entity summary changes

  - operation_id: life_reflection_candidate.dismiss
    write_type: update
    write_targets:
      - life.life_reflection_candidate
    side_effects:
      - pending candidate count changes

  - operation_id: life_share.member.invite
    write_type: create
    write_targets:
      - life.life_shared_member
    side_effects:
      - shared member count changes

  - operation_id: life_share.scope.update
    write_type: update
    write_targets:
      - life.life_shared_member
    side_effects:
      - visibility and editable scope change

  - operation_id: life_scenario.create
    write_type: create
    write_targets:
      - life.life_scenario
    side_effects:
      - scenario compare options change

  - operation_id: life_scenario.decision.apply
    write_type: create_or_update
    write_targets:
      - life.life_scenario_decision
    side_effects:
      - final compare decision summary changes
