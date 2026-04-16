# ============================================================
# LIFE PLANNER FAMILY MEETING SUMMARY DESIGN
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 070.export-summary
owner: Boss
prepared_by: Zero
schema: life

purpose:
  - 家族会議向けに要点だけを整理した共有ビューを設計する

sections:
  - meeting_title
  - discussion_purpose
  - top_priority_goals
  - upcoming_events
  - decisions_needed
  - shared_questions
  - follow_up_items

data_sources:
  - life.life_plan
  - life.life_goal
  - life.life_event_timeline
  - life.life_review_log
  - life.life_scenario_decision

scope_rules:
  - family meeting summary respects share scope
  - owner can decide whether sensitive categories are included
  - default family meeting mode avoids overexposing sensitive details
