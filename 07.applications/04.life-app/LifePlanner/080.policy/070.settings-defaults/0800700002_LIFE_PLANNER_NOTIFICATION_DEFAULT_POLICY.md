# ============================================================
# LIFE PLANNER NOTIFICATION DEFAULT POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 070.settings-defaults
owner: Boss
prepared_by: Zero
schema: life

default_enabled:
  - important_event_upcoming
  - review_cycle_due
  - reflection_candidate_arrived
  - stale_plan_warning

default_disabled_or_lighter:
  - scenario_decision_pending for non-Family
  - excessive family update noise
  - highly repetitive reminders

lead_time_defaults:
  important_event_upcoming:
    - 30_days
    - 7_days
    - 1_day

review_defaults:
  - monthly_light_review enabled
  - semiannual_review enabled
  - annual_review enabled

shared_role_defaults:
  family_viewer:
    - minimal notification approach
  family_editor:
    - within-scope update awareness only
