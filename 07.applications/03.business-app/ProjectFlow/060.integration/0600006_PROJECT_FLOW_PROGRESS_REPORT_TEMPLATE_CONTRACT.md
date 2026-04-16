# ============================================================
# PROJECT FLOW PROGRESS REPORT TEMPLATE CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

template_sections:
- report_header
- quantitative_summary
- qualitative_summary
- issue_summary
- risk_summary
- next_action_summary
- support_request_summary
- customer_confirmation_summary

report_inputs:
- project basic info
- reporting period
- progress percent
- completed task count
- incomplete task count
- overdue task count
- milestone status
- issue count
- high risk count
- time actual summary
- recent operational notes

rules:
- template output is draft only
- human editing remains mandatory
- template selection may differ by customer/internal audience
