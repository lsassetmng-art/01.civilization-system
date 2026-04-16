# ============================================================
# LIFE PLANNER ENTITY SCOPE AND DERIVED POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 030.binding
owner: Boss
prepared_by: Zero
schema: life

entity_scope:
  life.life_plan:
    owns:
      - plan_name
      - start_year
      - end_year
      - summary
      - visibility_policy
      - plan_status

  life.life_goal:
    owns:
      - category
      - title
      - description
      - priority
      - goal_status
      - start_target_date
      - end_target_date
      - estimated_cost_minor
      - currency_code
      - notes

  life.life_milestone:
    owns:
      - title
      - target_date
      - milestone_status
      - note

  life.life_event_timeline:
    owns:
      - event_category
      - title
      - event_mode
      - event_date
      - start_date
      - end_date
      - linked_life_goal_id
      - estimated_cost_minor
      - currency_code
      - note

  life.life_review_log:
    owns:
      - trigger_source
      - change_summary
      - reason
      - reviewer_role
      - reviewed_at

  life.life_reflection_candidate:
    owns:
      - source_app
      - source_record_id
      - summary
      - suggested_action
      - affected_entity_type
      - affected_entity_id
      - reflection_status
      - dismiss_reason
      - applied_at
      - dismissed_at

  life.life_shared_member:
    owns:
      - member_user_id
      - role_type
      - share_categories_json
      - allow_health
      - allow_end_of_life
      - allow_legal_memo
      - allow_asset_summary
      - invite_status
      - invited_at
      - accepted_at

  life.life_scenario:
    owns:
      - scenario_name
      - assumption_summary
      - cost_summary_minor
      - currency_code
      - risk_summary
      - note

  life.life_scenario_decision:
    owns:
      - selected_life_scenario_id
      - decision
      - decision_note
      - decided_at

derived_policy:
  examples:
    - total_goal_count
    - completed_goal_count
    - next_event_title
    - next_event_date
    - pending_candidate_count
    - formatted_total_cost
    - review_needed_count
  rule:
    - derived は原則保持しない
    - 画面用整形値も原則保持しない
    - 必要なら view / query / application derived として扱う
