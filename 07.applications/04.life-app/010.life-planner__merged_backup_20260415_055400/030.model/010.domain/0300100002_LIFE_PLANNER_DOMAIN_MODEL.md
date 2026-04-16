# ============================================================
# LIFE PLANNER DOMAIN MODEL
# ============================================================

entities:
  life_plan:
    fields:
      - plan_id
      - plan_name
      - owner_user_id
      - start_year
      - end_year
      - summary

  life_goal:
    fields:
      - goal_id
      - plan_id
      - category
      - title
      - priority
      - status
      - estimated_cost
      - currency_code

  milestone:
    fields:
      - milestone_id
      - goal_id
      - title
      - target_date
      - status

  event_timeline:
    fields:
      - event_id
      - plan_id
      - event_category
      - title
      - event_date_or_period
      - linked_goal_id

  scenario:
    fields:
      - scenario_id
      - plan_id
      - scenario_name
      - assumption_summary
      - cost_summary
      - risk_summary

  review_log:
    fields:
      - review_id
      - plan_id
      - reviewed_at
      - trigger_source
      - change_summary
      - reason

relations:
  - life_plan is root aggregate
  - life_goal belongs to life_plan
  - milestone belongs to life_goal
  - event_timeline belongs to life_plan
  - scenario belongs to life_plan
  - review_log belongs to life_plan
