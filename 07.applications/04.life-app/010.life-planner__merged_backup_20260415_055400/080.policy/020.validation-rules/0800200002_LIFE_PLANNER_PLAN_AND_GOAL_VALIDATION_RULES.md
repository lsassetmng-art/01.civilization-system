# ============================================================
# LIFE PLANNER PLAN AND GOAL VALIDATION RULES
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 020.validation-rules
owner: Boss
prepared_by: Zero
schema: life

plan_rules:
  - rule_id: VAL-PLAN-001
    condition:
      - plan_name is required

  - rule_id: VAL-PLAN-002
    condition:
      - start_year is required
      - end_year is required

  - rule_id: VAL-PLAN-003
    condition:
      - end_year must be greater than or equal to start_year

  - rule_id: VAL-PLAN-004
    condition:
      - visibility_policy must be private or family_shared

  - rule_id: VAL-PLAN-005
    condition:
      - archived plan cannot be edited by family roles

goal_rules:
  - rule_id: VAL-GOAL-001
    condition:
      - category is required

  - rule_id: VAL-GOAL-002
    condition:
      - title is required

  - rule_id: VAL-GOAL-003
    condition:
      - priority must be valid enum

  - rule_id: VAL-GOAL-004
    condition:
      - goal_status must be valid enum

  - rule_id: VAL-GOAL-005
    condition:
      - if estimated_cost_minor is present then currency_code is required

  - rule_id: VAL-GOAL-006
    condition:
      - if start_target_date and end_target_date both exist then end_target_date must be greater than or equal to start_target_date

milestone_rules:
  - rule_id: VAL-MILESTONE-001
    condition:
      - life_goal_id is required

  - rule_id: VAL-MILESTONE-002
    condition:
      - title is required

  - rule_id: VAL-MILESTONE-003
    condition:
      - target_date is required

  - rule_id: VAL-MILESTONE-004
    condition:
      - milestone_status must be valid enum
