# ============================================================
# LIFE PLANNER HOME RECOMMENDATION PRIORITY RULES
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 050.recommendation-rules
owner: Boss
prepared_by: Zero
schema: life

home_priority_buckets:
  - urgent_but_calm:
      examples:
        - reflection candidates
        - imminent important events

  - review_and_alignment:
      examples:
        - stale plan review
        - overdue goals
        - scenario decision pending

  - progress_visibility:
      examples:
        - goal progress
        - recent updates
        - accepted shared members summary

ordering_principles:
  - user actionability first
  - then near-term relevance
  - then longitudinal context

suppression_rules:
  - do not duplicate the same recommendation in too many cards
  - do not show hidden sensitive prompts to unauthorized roles
  - low-value repetitive items should collapse into summary
