# ============================================================
# MBO FRONTEND SCREEN IMPLEMENTATION WAVES
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Defines frontend screen implementation waves
after the exact first-slice fixation.

implementation_waves:

  wave_01_core_authoring:
    screens:
      - objective_list
      - objective_create_edit
      - objective_detail
    why_now:
      - establishes main entry flow
      - proves list/create/edit/detail continuity

  wave_02_execution_continuity:
    screens:
      - action_plan_list
      - action_plan_edit
      - progress_update
      - progress_history
      - evidence_reference_picker
      - task_link_picker
      - project_link_picker
      - interview_memo
    why_now:
      - delivers real execution value quickly
      - turns objective detail into working hub

  wave_03_template_efficiency:
    screens:
      - objective_template_select
      - department_template_admin
      - manager_comment_template_admin
      - review_cadence_preset_admin
    why_now:
      - standardizes repeated setup
      - supports manager/admin operation after core flow exists

  wave_04_review_flow:
    screens:
      - review_schedule
      - bulk_review_schedule
      - review_log
    why_now:
      - manager workflow becomes visible
      - alert/reminder relevance increases

  wave_05_evaluation_flow:
    screens:
      - evaluation_draft
      - evaluation_confirm
      - evaluation_calibration
    why_now:
      - final lock UX can be implemented after objective/review continuity exists

  wave_06_summary_and_jobs:
    screens:
      - dashboard_summary_shell
      - KPI_dashboard
      - executive_summary_view
      - aggregation_export
      - reminder_batch_send
    why_now:
      - aggregates are more meaningful after record flows stabilize
      - read-only summary UX can be tuned with real data

  wave_07_ERP_and_exception_governance:
    screens:
      - ERP_history
      - ERP_resend_control
      - reopen_request
      - reopen_queue
      - reopen_approval
      - reopen_execution
      - ERP_impact_note_view
    why_now:
      - most exception-heavy path
      - should follow stable lock and ERP history behavior

cross_wave_rules:
- multilingual resources remain mandatory
- iphone/android/pc/tablet compatibility remains mandatory
- lock badges remain mandatory
- alert vs reminder visual distinction remains mandatory
- read-only vs editable state separation remains mandatory
