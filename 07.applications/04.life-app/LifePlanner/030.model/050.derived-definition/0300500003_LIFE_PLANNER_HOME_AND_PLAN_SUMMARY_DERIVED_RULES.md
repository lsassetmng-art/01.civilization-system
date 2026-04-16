# ============================================================
# LIFE PLANNER HOME AND PLAN SUMMARY DERIVED RULES
# ============================================================

status: draft
system: LifePlanner
layer: 030.model
subfolder: 050.derived-definition
owner: Boss
prepared_by: Zero
schema: life

home_summary_rules:
  review_needed_count:
    concept:
      - number of review prompts currently relevant
    ingredients:
      - stale_plan_flag
      - pending_candidate_count
      - upcoming_event_needing_preparation_flag
    note:
      - this is a support indicator, not a stored field

  upcoming_event_count:
    concept:
      - count of events in configured near-term window
    default_window:
      - 90 days conceptual default

  next_event_date:
    concept:
      - earliest event anchor date among visible eligible events
    date_choice_rule:
      - single_date uses event_date
      - date_range uses start_date

plan_detail_summary_rules:
  goal_summary:
    - total_goal_count
    - completed_goal_count
    - in_progress_goal_count

  review_summary:
    - review_count
    - last_reviewed_at
    - latest_review_reason if exists

  cost_summary:
    - same currency totals may be shown
    - mixed currency requires separated display or note
