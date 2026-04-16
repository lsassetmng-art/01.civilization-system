# ============================================================
# LIFE PLANNER HOME AND PLAN DETAIL TRANSITIONS
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 010.screen
phase: phase-1-and-phase-3
owner: Boss
prepared_by: Zero

home:
  primary_cards:
    - upcoming_events
    - major_goal_progress
    - review_needed_items
    - reflection_candidates
    - shared_plan_summary

  actions:
    - open_plan_list
    - open_recent_plan_detail
    - open_notification_center
    - open_reflection_candidate_view
    - open_pricing_guide
    - open_settings

life_plan_detail:
  primary_sections:
    - plan_summary
    - category_summary
    - next_events
    - linked_goals
    - estimated_cost_summary
    - review_history_summary

  actions:
    - open_timeline_view
    - open_goal_list
    - open_review_log_view
    - open_risk_list
    - open_family_share_setting
    - open_scenario_compare
    - open_domain_dashboard
    - open_age_view
    - open_reflection_candidate_view

interface_rules:
  - homeから詳細に深く入りすぎない
  - detailで1計画の全機能入口を集約する
  - detail headerからplan switchを可能にする余地を残す
