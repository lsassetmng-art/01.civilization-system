# ============================================================
# PROJECT FLOW CUSTOMER EXPLANATION MATERIAL SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
customer_explanation_material

purpose:
Provides a unified place to generate and review standard customer-facing materials.

main_components:
- project selector
- material type selector
- generated material list
- preview area
- wording adjustment area
- export action area

material_type_selector:
- customer_facing_schedule
- progress_report
- issue_list
- risk_list
- decision_note
- follow_up_action_list

actions:
- generate material
- edit material wording
- export xlsx
- export csv
- export explanation material set

ui_rules:
- all standard materials should be reachable from one place
- external-use context should be visually clear
- material type switching should be easy
