# ============================================================
# MBO PERMISSION MATRIX IMPLEMENTATION
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Implementation-facing permission rules for screens and APIs.

screen_access_rules:

  dashboard:
    roles:
      - objective_owner
      - manager
      - evaluator
      - HR_operator
      - executive_viewer

  objective_create_edit:
    create_roles:
      - objective_owner
    update_roles:
      - objective_owner
    restrictions:
      - finalized objectives are not editable

  objective_template_select:
    roles:
      - objective_owner
      - manager
      - department_template_admin

  department_template_admin:
    roles:
      - department_template_admin

  action_plan_edit:
    create_roles:
      - objective_owner
    update_roles:
      - objective_owner
    restrictions:
      - locked after final confirmation

  progress_update:
    create_roles:
      - objective_owner
    restrictions:
      - locked after final confirmation

  review_schedule:
    create_roles:
      - manager
    update_roles:
      - manager

  bulk_review_schedule:
    create_roles:
      - manager
      - HR_operator

  review_log:
    create_roles:
      - manager

  manager_comment_template_admin:
    roles:
      - department_template_admin

  evaluation_draft:
    create_roles:
      - evaluator
    update_roles:
      - evaluator
    restrictions:
      - cannot change after confirmation except via governed process

  evaluation_confirm:
    confirm_roles:
      - evaluator

  evaluation_calibration:
    roles:
      - evaluator
      - HR_operator

  interview_memo:
    create_roles:
      - objective_owner
      - manager

  KPI_dashboard:
    roles:
      - manager
      - evaluator
      - HR_operator
      - executive_viewer

  aggregation_export:
    create_roles:
      - HR_operator

  evidence_reference_picker:
    create_roles:
      - objective_owner
    read_roles:
      - manager
      - evaluator
      - HR_operator

  task_link_picker:
    create_roles:
      - objective_owner

  project_link_picker:
    create_roles:
      - objective_owner

  executive_summary_view:
    roles:
      - executive_viewer
      - HR_operator

  ERP_history:
    roles:
      - HR_operator
      - system_auditor

  ERP_resend_control:
    create_roles:
      - HR_operator

  reminder_batch_send:
    create_roles:
      - HR_operator

api_access_notes:
- API authorization must mirror screen authorization
- role checks must be enforced server-side
- read-only roles must never rely on UI-only restrictions
- lock-state checks must be enforced server-side

