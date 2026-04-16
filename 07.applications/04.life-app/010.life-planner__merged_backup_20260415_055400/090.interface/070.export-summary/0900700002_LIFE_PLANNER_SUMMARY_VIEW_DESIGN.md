# ============================================================
# LIFE PLANNER SUMMARY VIEW DESIGN
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 070.export-summary
owner: Boss
prepared_by: Zero
schema: life

summary_view_types:
  - one_page_summary
  - category_summary
  - timeline_summary
  - review_summary
  - family_share_summary

one_page_summary:
  sections:
    - plan_name_and_period
    - top_priority_goals
    - upcoming_events
    - cost_summary
    - review_highlights

category_summary:
  sections:
    - category_title
    - goals_in_category
    - events_in_category
    - cost_summary_in_category
    - risk_or_review_note_if_applicable

timeline_summary:
  sections:
    - near_term
    - mid_term
    - long_term
  note:
    - exact year band display may depend on selected horizon

review_summary:
  sections:
    - latest_review_reason
    - recent_changes
    - pending_reflection_candidates

display_rules:
  - summary view is read-oriented
  - editing controls are hidden in summary mode
  - derived values may be emphasized over raw detail
