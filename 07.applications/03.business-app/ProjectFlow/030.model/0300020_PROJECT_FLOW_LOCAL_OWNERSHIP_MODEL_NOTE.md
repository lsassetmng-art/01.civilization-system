# ============================================================
# PROJECT FLOW LOCAL OWNERSHIP MODEL NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Summarizes models that represent primarily ProjectFlow-local ownership.

primarily_local_models:
- project_task
- project_milestone
- project_issue
- project_risk
- project_time_entry
- project_export_job
- project_progress_report_draft
- project_form_request
- project_memo
- project_comment_thread
- project_template
- project_template_task
- project_schedule_proposal

mixed_boundary_models:
- project header with ERP reference fields
- sync request and sync log

notes:
Mixed-boundary models may contain ERP-linked or mediated status context,
but ProjectFlow still owns their app-local usage and presentation layer.
