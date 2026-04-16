# ============================================================
# MBO EXPANDED SCREEN ARCHITECTURE
# PRIORITY A + B FIXED
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

screen_list:
- dashboard
- objective_list
- objective_detail
- objective_create_edit
- objective_template_select
- department_template_admin
- action_plan_list
- action_plan_edit
- progress_update
- progress_history
- review_schedule
- bulk_review_schedule
- review_log
- review_cadence_preset_admin
- evaluation_draft
- evaluation_confirm
- evaluation_calibration
- manager_comment_template_admin
- interview_memo
- KPI_dashboard
- aggregation_export
- evidence_reference_picker
- task_link_picker
- project_link_picker
- sharing_status
- executive_summary_view
- ERP_history
- ERP_resend_control
- reminder_batch_send

screen_purposes:

  objective_template_select:
    - choose reusable objective templates
    - start from personal or department templates

  department_template_admin:
    - maintain department common objective templates

  bulk_review_schedule:
    - assign many review schedules at once

  review_cadence_preset_admin:
    - maintain review cadence preset patterns

  evaluation_calibration:
    - compare draft or confirmed evaluations for controlled adjustment process

  manager_comment_template_admin:
    - maintain reusable manager comment patterns

  interview_memo:
    - record 1on1 or review interview notes

  KPI_dashboard:
    - show KPI charts and trends by objective or period

  aggregation_export:
    - export aggregated records for reporting or downstream use

  evidence_reference_picker:
    - attach evidence references to progress or review records

  task_link_picker:
    - link execution tasks to an objective

  project_link_picker:
    - link project outputs or milestones to an objective

  executive_summary_view:
    - read-only view for executives

  ERP_resend_control:
    - show failed sends and perform controlled resend

  reminder_batch_send:
    - send batch reminders for pending updates or pending reviews

