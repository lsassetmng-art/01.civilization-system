# ============================================================
# LIFE PLANNER DOMAIN AND AGE DERIVED RULES
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 050.derived-definition
owner: Boss
prepared_by: Zero
schema: life

domain_dashboard_rules:
  per_domain_goal_count:
    source:
      - life.life_goal.category

  per_domain_event_count:
    source:
      - life.life_event_timeline.event_category mapped to domain

  per_domain_pending_review_flag:
    source:
      - related reflection candidates
      - stale review signals
      - unresolved high impact risk items if modeled later

age_view_rules:
  age_band_assignment:
    concept:
      - event or goal is grouped by user age around target dates
    note:
      - actual age source frozen later
      - for now this remains display-derived only

  age_band_summary:
    includes:
      - related goals
      - related events
      - optional cost summary
      - optional review note

policy_note:
  - domain and age summaries should never imply a precision beyond available data
