# ============================================================
# PROPOSAL BUILDER FIELD SPEC
# ============================================================

status: canonical
layer: interface
application: QuickForecast
owner: Boss
prepared_by: Zero

purpose:
Defines the field-level structure of proposal builder UI.

main_fields:
- draft_type_code
- title
- executive_summary
- problem_statement
- opportunity_statement
- recommended_action
- expected_business_effect
- draft_body

context_fields:
- source_forecast_title
- selected_scenario
- selected_action_summary
- profit_preview_summary

actions:
- generate_draft
- regenerate_selected_section
- save_draft
- share_pro
- request_approval_pro
- continue_to_profit
