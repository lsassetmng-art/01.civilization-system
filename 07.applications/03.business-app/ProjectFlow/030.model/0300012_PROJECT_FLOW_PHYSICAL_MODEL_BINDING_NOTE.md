# ============================================================
# PROJECT FLOW PHYSICAL MODEL BINDING NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

summary:
This note binds logical models to physical tables.

bindings:
- project -> pf_project
- project_task -> pf_project_task
- project_milestone -> pf_project_milestone
- project_issue -> pf_project_issue
- project_risk -> pf_project_risk
- project_time_entry -> pf_project_time_entry
- project_sync_request -> pf_sync_request
- project_sync_log -> pf_sync_log
- project_export_job -> pf_export_job
- project_progress_report_draft -> pf_progress_report_draft
