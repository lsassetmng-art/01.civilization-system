# ============================================================
# LIFE PLANNER REVIEW AND ASSIST DEFAULT POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 070.settings-defaults
owner: Boss
prepared_by: Zero
schema: life

review_defaults:
  - show review prompt on monthly cycle
  - show reflection candidate summary on home
  - show stale plan reminder after long inactivity

ai_assist_defaults:
  - enabled as optional entry point
  - no auto-open intrusive assistant
  - support wording and review prompts only
  - no autonomous final decisions

checklist_defaults:
  - visible but not forced during first run
  - surfaced during annual review and summary contexts
