# ============================================================
# LIFE PLANNER NOTIFICATION EVENT CATALOG
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 020.notification-review
owner: Boss
prepared_by: Zero
schema: life

events:
  - event_id: LP-NOTI-001
    event_name: important_event_30_days_before
    source:
      - life.life_event_timeline
    target_roles:
      - owner
      - family_editor within_scope
      - family_viewer within_scope
    visibility_rule:
      - sensitive categories require share_scope permission

  - event_id: LP-NOTI-002
    event_name: review_cycle_due_monthly
    source:
      - life.life_plan
      - life.life_review_log
    target_roles:
      - owner

  - event_id: LP-NOTI-003
    event_name: reflection_candidate_arrived
    source:
      - life.life_reflection_candidate
    target_roles:
      - owner

  - event_id: LP-NOTI-004
    event_name: family_editor_updated_plan
    source:
      - life.life_goal
      - life.life_event_timeline
    target_roles:
      - owner

  - event_id: LP-NOTI-005
    event_name: scenario_decision_pending
    source:
      - life.life_scenario
      - life.life_scenario_decision
    target_roles:
      - owner

  - event_id: LP-NOTI-006
    event_name: stale_plan_90_days
    source:
      - life.life_plan
      - life.life_review_log
    target_roles:
      - owner
