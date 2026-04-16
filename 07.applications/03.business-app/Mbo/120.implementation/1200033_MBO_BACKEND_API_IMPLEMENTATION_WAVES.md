# ============================================================
# MBO BACKEND API IMPLEMENTATION WAVES
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Defines backend API implementation waves
after the exact first-slice fixation.

implementation_waves:

  wave_01_objective_core:
    endpoints:
      - GET /api/mbo/objectives
      - GET /api/mbo/objectives/{objective_id}
      - POST /api/mbo/objectives
      - PUT /api/mbo/objectives/{objective_id}
      - POST /api/mbo/objectives/{objective_id}/activate
    why_now:
      - establishes core domain
      - proves state transition draft -> active
      - unlocks primary screens

  wave_02_execution_records:
    endpoints:
      - GET /api/mbo/objectives/{objective_id}/action-plans
      - POST /api/mbo/objectives/{objective_id}/action-plans
      - PUT /api/mbo/action-plans/{action_plan_id}
      - GET /api/mbo/objectives/{objective_id}/progress-logs
      - POST /api/mbo/objectives/{objective_id}/progress-logs
      - GET /api/mbo/objectives/{objective_id}/evidence-references
      - POST /api/mbo/objectives/{objective_id}/evidence-references
      - GET /api/mbo/objectives/{objective_id}/task-links
      - POST /api/mbo/objectives/{objective_id}/task-links
      - GET /api/mbo/objectives/{objective_id}/project-links
      - POST /api/mbo/objectives/{objective_id}/project-links
      - GET /api/mbo/objectives/{objective_id}/interview-memos
      - POST /api/mbo/objectives/{objective_id}/interview-memos
    why_now:
      - adds execution continuity
      - proves lock-sensitive write paths
      - enriches objective detail value

  wave_03_templates_and_duplicates:
    endpoints:
      - GET /api/mbo/objective-templates
      - POST /api/mbo/objective-templates
      - POST /api/mbo/objective-templates/{objective_template_id}/apply
      - GET /api/mbo/manager-comment-templates
      - POST /api/mbo/manager-comment-templates
      - POST /api/mbo/objectives/{objective_id}/duplicate
    why_now:
      - improves authoring efficiency
      - supports department-standard operations
      - prepares later review flow

  wave_04_review_flow:
    endpoints:
      - GET /api/mbo/objectives/{objective_id}/review-schedules
      - POST /api/mbo/objectives/{objective_id}/review-schedules
      - POST /api/mbo/review-schedules/bulk
      - GET /api/mbo/objectives/{objective_id}/review-logs
      - POST /api/mbo/objectives/{objective_id}/review-logs
    why_now:
      - manager workflow becomes operable
      - overdue / upcoming logic can be validated
      - dashboard attention zone gains accuracy

  wave_05_evaluation_flow:
    endpoints:
      - GET /api/mbo/objectives/{objective_id}/evaluation
      - PUT /api/mbo/objectives/{objective_id}/evaluation
      - POST /api/mbo/objectives/{objective_id}/evaluation/confirm
      - GET /api/mbo/evaluation-calibrations
      - POST /api/mbo/evaluation-calibrations
    why_now:
      - final lock and governed transition become testable
      - evaluation lifecycle becomes complete

  wave_06_dashboard_and_summary:
    endpoints:
      - GET /api/mbo/kpi-dashboard
      - GET /api/mbo/executive-summary
    why_now:
      - aggregates become meaningful after core records exist
      - executive and HR read-only paths become visible

  wave_07_jobs_and_exports:
    endpoints:
      - GET /api/mbo/exports
      - POST /api/mbo/exports
      - GET /api/mbo/reminders/batch
      - POST /api/mbo/reminders/batch
    why_now:
      - supports operational efficiency
      - requires stable core records and permissions first

  wave_08_ERP_and_reopen_governance:
    endpoints:
      - GET /api/mbo/erp-transmissions
      - POST /api/mbo/erp-transmissions/{transmission_history_id}/resend
      - GET /api/mbo/erp-resend-jobs
      - GET /api/mbo/reopen-requests
      - POST /api/mbo/reopen-requests
      - GET /api/mbo/reopen-approvals
      - POST /api/mbo/reopen-approvals
      - GET /api/mbo/reopen-executions
      - POST /api/mbo/reopen-executions
      - GET /api/mbo/erp-impact-notes
      - POST /api/mbo/erp-impact-notes
    why_now:
      - most governance-heavy area
      - should start after lock/evaluation/ERP history paths are stable

cross_wave_rules:
- validation envelope must stay consistent
- permission checks must stay server-side
- state checks must stay server-side
- lock checks must stay server-side
- pagination shape must stay consistent
