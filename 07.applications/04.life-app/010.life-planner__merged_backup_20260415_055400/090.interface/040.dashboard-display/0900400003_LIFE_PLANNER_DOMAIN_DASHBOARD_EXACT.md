# ============================================================
# LIFE PLANNER DOMAIN DASHBOARD EXACT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 040.dashboard-display
owner: Boss
prepared_by: Zero
schema: life

domain_dashboard:
  supported_domains:
    - family
    - housing
    - work
    - learning
    - health
    - retirement
    - end_of_life

per_domain_cards:
  data_points:
    - goal_count
    - completed_goal_count
    - upcoming_event_count
    - pending_review_flag
    - estimated_cost_total_minor
    - currency_code
  sources:
    - life.life_goal
    - life.life_event_timeline
    - life.life_review_log
    - derived cost summary

display_rules:
  - card order follows user priority if available
  - otherwise fixed default order
  - hidden sensitive domains are not shown to shared roles without permission

family_plan_only_extensions:
  - shared_member_activity_summary
  - scenario_pending_summary
