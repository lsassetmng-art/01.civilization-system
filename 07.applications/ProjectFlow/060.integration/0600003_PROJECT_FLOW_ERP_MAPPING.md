# ============================================================
# PROJECT FLOW ERP MAPPING
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

inbound_mapping_examples:
erp_project_code -> project.erp_project_code
erp_project_name -> project.project_name
erp_customer_id -> project.customer_id
erp_budget_amount -> project.budget_amount_view
erp_actual_cost_amount -> project.actual_cost_amount_view

outbound_mapping_examples:
project.progress_percent -> outbound.progress_percent
project.project_status -> outbound.project_status
time_entry.hours -> outbound.actual_hours

protected_rules:
- ERP code is read-only locally
- ERP budget is read-only locally by default
- issue and risk are local-owned by default
