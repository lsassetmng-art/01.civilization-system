# ============================================================
# PROJECT FLOW WBS PROPOSAL WIZARD SCREEN DETAIL
# ============================================================

status: canonical
layer: interface
application: ProjectFlow
owner: Boss
prepared_by: Zero

screen_id:
wbs_proposal_wizard

purpose:
Guides the user through template-based schedule proposal generation.

wizard_steps:
- choose project type
- choose template
- enter project start date
- choose business-day rule
- review proposal summary
- open preview

main_fields:
- project_type
- project_template
- project_start_date
- business_day_rule_key

actions:
- generate proposal
- cancel
- open preview

ui_rules:
- wizard should remain short and understandable
- only proposal-driving inputs should be required
