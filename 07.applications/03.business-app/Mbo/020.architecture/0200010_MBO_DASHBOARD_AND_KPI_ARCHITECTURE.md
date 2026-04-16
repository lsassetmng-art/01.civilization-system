# ============================================================
# MBO DASHBOARD AND KPI ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

purpose:
Defines dashboard summary architecture and KPI calculation scope.

dashboard_principles:
- dashboard is execution-centered
- dashboard must separate action-needed items from summary-only items
- dashboard must distinguish alerts from reminders
- dashboard must distinguish editable work from locked history
- dashboard must support role-based visibility

dashboard_sections:

  operational_attention_zone:
    purpose:
      - show urgent work and failures
    widgets:
      - overdue_review_count
      - stale_progress_count
      - pending_evaluation_confirmation_count
      - ERP_failure_count

  execution_overview_zone:
    purpose:
      - show current objective execution health
    widgets:
      - total_objectives
      - draft_objectives
      - active_objectives
      - in_review_objectives
      - evaluation_drafted_objectives
      - finalized_objectives
      - transferred_objectives

  review_and_evaluation_zone:
    purpose:
      - show review and evaluation workload
    widgets:
      - scheduled_reviews_upcoming_count
      - completed_reviews_count
      - overdue_reviews_count
      - confirmed_evaluations_count
      - unconfirmed_evaluation_drafts_count

  linkage_and_evidence_zone:
    purpose:
      - show supporting execution linkage density
    widgets:
      - linked_task_count
      - linked_project_count
      - evidence_reference_count
      - interview_memo_count

  KPI_zone:
    purpose:
      - show trend and distribution metrics
    widgets:
      - progress_distribution
      - objective_status_distribution
      - review_completion_rate
      - evaluation_confirmation_rate
      - ERP_success_rate

role_visibility_policy:
- objective_owner sees own-scope operational and execution widgets
- manager sees team-scope operational and execution widgets
- evaluator sees evaluation-related widgets
- HR_operator sees ERP and operational governance widgets
- executive_viewer sees read-only aggregate summary widgets

