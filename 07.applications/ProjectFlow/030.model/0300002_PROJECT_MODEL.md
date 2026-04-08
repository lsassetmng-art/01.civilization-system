# ============================================================
# PROJECT MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- project_id
- erp_project_code
- project_name
- project_status
- project_type
- customer_id
- customer_name_snapshot
- project_manager_id
- planned_start_date
- planned_end_date
- actual_start_date
- actual_end_date
- progress_percent
- delay_days
- budget_amount_view
- actual_cost_amount_view
- priority
- health_status
- sync_state
- last_imported_at
- last_exported_at
- created_at
- updated_at

ownership_notes:
- erp_project_code is ERP-owned
- budget_amount_view is ERP-owned
- progress_percent may be mapped outbound by policy
