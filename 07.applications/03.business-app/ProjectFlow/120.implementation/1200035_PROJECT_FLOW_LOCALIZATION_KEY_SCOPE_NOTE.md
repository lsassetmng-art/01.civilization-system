# ============================================================
# PROJECT FLOW LOCALIZATION KEY SCOPE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines the intended scope of localization keys.

key_scope_groups:
- common_ui
- project_domain
- task_domain
- milestone_domain
- issue_risk_domain
- sync_domain
- export_report_domain
- customer_material_domain
- entitlement_domain
- summary_domain

examples:
common_ui:
- common.save
- common.cancel
- common.export
- common.review_state

customer_material_domain:
- customer_material.schedule.title
- customer_material.progress_report.title
- customer_material.issue_list.title
- customer_material.risk_list.title
- customer_material.decision_note.title
- customer_material.follow_up.title
