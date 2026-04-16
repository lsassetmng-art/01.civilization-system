# ============================================================
# LIFE PLANNER REVIEW NEEDED RULES
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 050.recommendation-rules
owner: Boss
prepared_by: Zero
schema: life

review_needed_triggers:
  - trigger_id: review_due_by_cycle
    condition:
      - monthly / semiannual / annual review cycle due

  - trigger_id: pending_reflection_candidate_exists
    condition:
      - pending_candidate_count > 0

  - trigger_id: important_event_near
    condition:
      - event in near-term window and no recent related review

  - trigger_id: stale_plan_detected
    condition:
      - stale_plan_flag true

  - trigger_id: major_family_update_received
    condition:
      - significant family_editor change within scope

priority_order:
  - pending_reflection_candidate_exists
  - important_event_near
  - major_family_update_received
  - review_due_by_cycle
  - stale_plan_detected

guidance_rule:
  - show at most a small set of high-value review prompts first
  - avoid flooding with too many reasons at once
