# ============================================================
# LIFE PLANNER HOME DASHBOARD EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 040.dashboard-display
owner: Boss
prepared_by: Zero
schema: life

home_dashboard_sections:
  order:
    - review_needed
    - upcoming_events
    - goal_progress
    - reflection_candidates
    - shared_plan_summary
    - quick_actions

section_01_review_needed:
  data_points:
    - review_needed_count
    - last_reviewed_at
    - stale_plan_flag
  source:
    - life.life_review_log
    - life.life_plan

section_02_upcoming_events:
  data_points:
    - next_event_title
    - next_event_date
    - upcoming_event_count
  source:
    - life.life_event_timeline

section_03_goal_progress:
  data_points:
    - total_goal_count
    - completed_goal_count
    - in_progress_goal_count
    - paused_goal_count
  source:
    - life.life_goal

section_04_reflection_candidates:
  data_points:
    - pending_candidate_count
    - latest_source_app
    - latest_candidate_created_at
  source:
    - life.life_reflection_candidate

section_05_shared_plan_summary:
  data_points:
    - shared_member_count
    - recent_family_update_flag
  source:
    - life.life_shared_member
    - derived from goal/event updates

section_06_quick_actions:
  actions:
    - open_plan_list
    - create_plan
    - open_reflection_candidate_view
    - open_notification_center
