# ============================================================
# JOB SCREEN COMPONENT MODEL
# ============================================================

status: canonical
layer: model
scope: work-ui-foundation
component: job-screen-component

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COMMON COMPONENTS
# ============================================================

common_components:
- dashboard_summary
- current_kpi_panel
- today_task_list
- weekly_or_monthly_task_list
- personnel_status_panel
- resource_stock_panel
- budget_or_cost_panel
- incident_alert_panel
- decision_action_panel
- ai_suggestion_panel
- history_log_panel
- approval_or_commit_panel


# ============================================================
# 2. COMPONENT FIELDS
# ============================================================

component_fields:
- component_id
- component_name
- component_type
- required_job_categories
- visible_conditions
- editable_conditions
- data_dependencies
- action_dependencies
- priority_order


# ============================================================
# 3. SPECIALIZED COMPONENTS
# ============================================================

specialized_components:
- timetable_editor
- inventory_grid
- classroom_assignment_board
- route_status_map
- patient_priority_board
- blessing_or_ritual_queue
- shipment_queue
- maintenance_scheduler
- command_roster
- permit_review_board
- funding_review_board
- headline_queue


# ============================================================
# 4. FINAL RULE
# ============================================================

Every work screen must combine
common operational components
with category-specific components.
