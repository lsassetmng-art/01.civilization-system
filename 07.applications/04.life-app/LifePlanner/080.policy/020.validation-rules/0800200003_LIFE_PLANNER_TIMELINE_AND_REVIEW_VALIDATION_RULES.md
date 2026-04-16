# ============================================================
# LIFE PLANNER TIMELINE AND REVIEW VALIDATION RULES
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 020.validation-rules
owner: Boss
prepared_by: Zero
schema: life

timeline_rules:
  - rule_id: VAL-EVENT-001
    condition:
      - event_category is required

  - rule_id: VAL-EVENT-002
    condition:
      - title is required

  - rule_id: VAL-EVENT-003
    condition:
      - event_mode must be single_date or date_range

  - rule_id: VAL-EVENT-004
    condition:
      - if event_mode = single_date then event_date is required
      - start_date and end_date must be null

  - rule_id: VAL-EVENT-005
    condition:
      - if event_mode = date_range then start_date and end_date are required
      - event_date must be null

  - rule_id: VAL-EVENT-006
    condition:
      - if start_date and end_date exist then end_date must be greater than or equal to start_date

  - rule_id: VAL-EVENT-007
    condition:
      - if estimated_cost_minor is present then currency_code is required

review_rules:
  - rule_id: VAL-REVIEW-001
    condition:
      - plan_id is required

  - rule_id: VAL-REVIEW-002
    condition:
      - trigger_source is required

  - rule_id: VAL-REVIEW-003
    condition:
      - change_summary is required

  - rule_id: VAL-REVIEW-004
    condition:
      - reason is required

  - rule_id: VAL-REVIEW-005
    condition:
      - reviewer_role must be owner or family_editor

review_policy_note:
  - review_log is append-only preferred
  - blank reason is not allowed
