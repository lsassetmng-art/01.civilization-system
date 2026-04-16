# ============================================================
# LIFE PLANNER SHARE SCENARIO REFLECTION VALIDATION RULES
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 020.validation-rules
owner: Boss
prepared_by: Zero
schema: life

share_rules:
  - rule_id: VAL-SHARE-001
    condition:
      - member_user_id is required

  - rule_id: VAL-SHARE-002
    condition:
      - member_user_id must not equal owner_user_id

  - rule_id: VAL-SHARE-003
    condition:
      - role_type must be family_viewer or family_editor

  - rule_id: VAL-SHARE-004
    condition:
      - share_categories_json must contain at least one category unless explicit minimal share mode is allowed in future

  - rule_id: VAL-SHARE-005
    condition:
      - invite_status must be pending or accepted or declined

scenario_rules:
  - rule_id: VAL-SCENARIO-001
    condition:
      - scenario_name is required

  - rule_id: VAL-SCENARIO-002
    condition:
      - assumption_summary is required

  - rule_id: VAL-SCENARIO-003
    condition:
      - if cost_summary_minor is present then currency_code is required

  - rule_id: VAL-SCENARIO-004
    condition:
      - compare requires at least 2 scenario_ids

  - rule_id: VAL-SCENARIO-005
    condition:
      - decision must be valid enum

  - rule_id: VAL-SCENARIO-006
    condition:
      - if decision = adopt_to_plan then selected_life_scenario_id is required

reflection_rules:
  - rule_id: VAL-REFLECT-001
    condition:
      - source_app is required

  - rule_id: VAL-REFLECT-002
    condition:
      - summary is required

  - rule_id: VAL-REFLECT-003
    condition:
      - reflection_status must be pending or applied or dismissed

  - rule_id: VAL-REFLECT-004
    condition:
      - apply action allowed only when status = pending

  - rule_id: VAL-REFLECT-005
    condition:
      - dismiss action allowed only when status = pending

  - rule_id: VAL-REFLECT-006
    condition:
      - dismiss_reason is required when dismissing

  - rule_id: VAL-REFLECT-007
    condition:
      - review_reason is required when applying
