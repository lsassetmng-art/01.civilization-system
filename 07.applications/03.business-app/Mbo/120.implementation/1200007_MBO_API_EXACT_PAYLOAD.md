# ============================================================
# MBO API EXACT PAYLOAD
# PRIORITY A + B
# ============================================================

status: canonical
application: Mbo
layer: implementation
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request and response payload shapes
for Mbo APIs in formal design scope.

common_response_envelope:
success:
  request:
    {}
  response:
    status: ok
    data: object
    meta:
      request_id: string
      timestamp: string

error:
  request:
    {}
  response:
    status: error
    error:
      code: string
      message: string
      field_errors: array

# ============================================================
# 1. OBJECTIVE APIs
# ============================================================

create_objective:
  endpoint: POST /api/mbo/objectives
  request:
    period_id: string
    owner_user_id: string
    manager_user_id: string
    title: string
    objective_category: string
    objective_type: string
    quantitative_target: string
    qualitative_target: string
    success_criteria: string
    priority: string
    weight: number
    start_date: string
    due_date: string
    language_code: string
  response:
    status: ok
    data:
      objective_id: string
      status: draft
      created_at: string
      updated_at: string
    meta:
      request_id: string
      timestamp: string

update_objective:
  endpoint: PUT /api/mbo/objectives/{objective_id}
  request:
    title: string
    objective_category: string
    objective_type: string
    quantitative_target: string
    qualitative_target: string
    success_criteria: string
    priority: string
    weight: number
    start_date: string
    due_date: string
    manager_user_id: string
    language_code: string
  response:
    status: ok
    data:
      objective_id: string
      status: string
      updated_at: string
    meta:
      request_id: string
      timestamp: string

activate_objective:
  endpoint: POST /api/mbo/objectives/{objective_id}/activate
  request:
    activated_by_user_id: string
  response:
    status: ok
    data:
      objective_id: string
      status: active
      activated_at: string
    meta:
      request_id: string
      timestamp: string

get_objective_detail:
  endpoint: GET /api/mbo/objectives/{objective_id}
  request:
    {}
  response:
    status: ok
    data:
      objective_id: string
      period_id: string
      owner_user_id: string
      manager_user_id: string
      title: string
      objective_category: string
      objective_type: string
      quantitative_target: string
      qualitative_target: string
      success_criteria: string
      priority: string
      weight: number
      progress_percent: number
      status: string
      start_date: string
      due_date: string
      final_locked_at: string
      created_at: string
      updated_at: string
    meta:
      request_id: string
      timestamp: string

list_objectives:
  endpoint: GET /api/mbo/objectives
  request:
    period_id: string
    owner_user_id: string
    manager_user_id: string
    status: string
    objective_category: string
    keyword: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - objective_id: string
          title: string
          owner_user_id: string
          progress_percent: number
          status: string
          due_date: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

duplicate_objective_from_period:
  endpoint: POST /api/mbo/objectives/{objective_id}/duplicate
  request:
    target_period_id: string
    duplicated_by_user_id: string
  response:
    status: ok
    data:
      objective_id: string
      source_objective_id: string
      status: draft
      created_at: string
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 2. OBJECTIVE TEMPLATE APIs
# ============================================================

list_objective_templates:
  endpoint: GET /api/mbo/objective-templates
  request:
    template_scope: string
    department_id: string
    keyword: string
    language_code: string
    active_flag: boolean
  response:
    status: ok
    data:
      items:
        - objective_template_id: string
          template_scope: string
          template_name: string
          objective_category: string
          objective_type: string
          active_flag: boolean
      total_count: number
    meta:
      request_id: string
      timestamp: string

create_objective_template:
  endpoint: POST /api/mbo/objective-templates
  request:
    company_id: string
    department_id: string
    template_scope: string
    template_name: string
    objective_category: string
    objective_type: string
    default_quantitative_target: string
    default_qualitative_target: string
    default_success_criteria: string
    default_priority: string
    default_weight: number
    language_code: string
    active_flag: boolean
  response:
    status: ok
    data:
      objective_template_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

apply_objective_template:
  endpoint: POST /api/mbo/objective-templates/{objective_template_id}/apply
  request:
    period_id: string
    owner_user_id: string
    manager_user_id: string
    applied_by_user_id: string
  response:
    status: ok
    data:
      objective_id: string
      source_template_id: string
      status: draft
      created_at: string
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 3. ACTION PLAN APIs
# ============================================================

create_action_plan:
  endpoint: POST /api/mbo/objectives/{objective_id}/action-plans
  request:
    step_no: number
    step_title: string
    step_description: string
    owner_user_id: string
    planned_start_at: string
    planned_end_at: string
    completion_percent: number
    status: string
  response:
    status: ok
    data:
      action_plan_id: string
      objective_id: string
      created_at: string
      updated_at: string
    meta:
      request_id: string
      timestamp: string

update_action_plan:
  endpoint: PUT /api/mbo/action-plans/{action_plan_id}
  request:
    step_title: string
    step_description: string
    owner_user_id: string
    planned_start_at: string
    planned_end_at: string
    completion_percent: number
    status: string
  response:
    status: ok
    data:
      action_plan_id: string
      updated_at: string
    meta:
      request_id: string
      timestamp: string

list_action_plans:
  endpoint: GET /api/mbo/objectives/{objective_id}/action-plans
  request:
    {}
  response:
    status: ok
    data:
      items:
        - action_plan_id: string
          step_no: number
          step_title: string
          owner_user_id: string
          completion_percent: number
          status: string
      total_count: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 4. PROGRESS APIs
# ============================================================

create_progress_log:
  endpoint: POST /api/mbo/objectives/{objective_id}/progress-logs
  request:
    logged_by_user_id: string
    progress_percent: number
    progress_comment: string
    blocker_note: string
    next_action_note: string
    language_code: string
  response:
    status: ok
    data:
      progress_log_id: string
      objective_id: string
      logged_at: string
    meta:
      request_id: string
      timestamp: string

list_progress_logs:
  endpoint: GET /api/mbo/objectives/{objective_id}/progress-logs
  request:
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - progress_log_id: string
          logged_by_user_id: string
          logged_at: string
          progress_percent: number
          progress_comment: string
          blocker_note: string
          next_action_note: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 5. REVIEW SCHEDULE APIs
# ============================================================

create_review_schedule:
  endpoint: POST /api/mbo/objectives/{objective_id}/review-schedules
  request:
    review_type: string
    planned_review_at: string
    reviewer_user_id: string
    status: string
  response:
    status: ok
    data:
      review_schedule_id: string
      objective_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

bulk_create_review_schedules:
  endpoint: POST /api/mbo/review-schedules/bulk
  request:
    target_filter:
      period_id: string
      owner_user_id: string
      manager_user_id: string
      status: string
    schedule:
      review_type: string
      planned_review_at: string
      reviewer_user_id: string
      status: string
    requested_by_user_id: string
  response:
    status: ok
    data:
      created_count: number
      requested_at: string
    meta:
      request_id: string
      timestamp: string

list_review_schedules:
  endpoint: GET /api/mbo/objectives/{objective_id}/review-schedules
  request:
    {}
  response:
    status: ok
    data:
      items:
        - review_schedule_id: string
          review_type: string
          planned_review_at: string
          reviewer_user_id: string
          status: string
      total_count: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 6. REVIEW LOG APIs
# ============================================================

create_review_log:
  endpoint: POST /api/mbo/objectives/{objective_id}/review-logs
  request:
    review_type: string
    reviewer_user_id: string
    reviewed_at: string
    review_comment: string
    review_result: string
    manager_comment_template_id: string
    language_code: string
  response:
    status: ok
    data:
      review_log_id: string
      objective_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

list_review_logs:
  endpoint: GET /api/mbo/objectives/{objective_id}/review-logs
  request:
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - review_log_id: string
          review_type: string
          reviewer_user_id: string
          reviewed_at: string
          review_result: string
          review_comment: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 7. COMMENT TEMPLATE APIs
# ============================================================

create_manager_comment_template:
  endpoint: POST /api/mbo/manager-comment-templates
  request:
    company_id: string
    department_id: string
    template_name: string
    template_body: string
    language_code: string
    active_flag: boolean
  response:
    status: ok
    data:
      manager_comment_template_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

list_manager_comment_templates:
  endpoint: GET /api/mbo/manager-comment-templates
  request:
    department_id: string
    language_code: string
    active_flag: boolean
  response:
    status: ok
    data:
      items:
        - manager_comment_template_id: string
          template_name: string
          language_code: string
          active_flag: boolean
      total_count: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 8. EVALUATION APIs
# ============================================================

create_or_update_evaluation_draft:
  endpoint: PUT /api/mbo/objectives/{objective_id}/evaluation
  request:
    evaluator_user_id: string
    evaluation_score: number
    evaluation_comment: string
    language_code: string
  response:
    status: ok
    data:
      evaluation_id: string
      objective_id: string
      draft_saved_at: string
    meta:
      request_id: string
      timestamp: string

confirm_evaluation:
  endpoint: POST /api/mbo/objectives/{objective_id}/evaluation/confirm
  request:
    evaluator_user_id: string
    confirmed_at: string
  response:
    status: ok
    data:
      evaluation_id: string
      objective_id: string
      final_lock_flag: true
      confirmed_at: string
    meta:
      request_id: string
      timestamp: string

get_evaluation:
  endpoint: GET /api/mbo/objectives/{objective_id}/evaluation
  request:
    {}
  response:
    status: ok
    data:
      evaluation_id: string
      objective_id: string
      evaluator_user_id: string
      evaluation_score: number
      evaluation_comment: string
      final_lock_flag: boolean
      confirmed_at: string
      ERP_sent_at: string
      ERP_send_status: string
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 9. CALIBRATION APIs
# ============================================================

create_calibration_record:
  endpoint: POST /api/mbo/evaluation-calibrations
  request:
    period_id: string
    objective_id: string
    evaluation_id: string
    calibration_status: string
    calibration_comment: string
    calibrated_by_user_id: string
    calibrated_at: string
  response:
    status: ok
    data:
      evaluation_calibration_record_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

list_calibration_records:
  endpoint: GET /api/mbo/evaluation-calibrations
  request:
    period_id: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - evaluation_calibration_record_id: string
          objective_id: string
          evaluation_id: string
          calibration_status: string
          calibrated_by_user_id: string
          calibrated_at: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 10. INTERVIEW MEMO APIs
# ============================================================

create_interview_memo:
  endpoint: POST /api/mbo/objectives/{objective_id}/interview-memos
  request:
    memo_type: string
    memo_at: string
    author_user_id: string
    memo_body: string
    language_code: string
  response:
    status: ok
    data:
      interview_memo_id: string
      created_at: string
    meta:
      request_id: string
      timestamp: string

list_interview_memos:
  endpoint: GET /api/mbo/objectives/{objective_id}/interview-memos
  request:
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - interview_memo_id: string
          memo_type: string
          memo_at: string
          author_user_id: string
          memo_body: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 11. EVIDENCE REFERENCE APIs
# ============================================================

attach_evidence_reference:
  endpoint: POST /api/mbo/objectives/{objective_id}/evidence-references
  request:
    progress_log_id: string
    review_log_id: string
    reference_type: string
    reference_uri: string
    reference_label: string
  response:
    status: ok
    data:
      evidence_reference_id: string
      uploaded_at: string
    meta:
      request_id: string
      timestamp: string

list_evidence_references:
  endpoint: GET /api/mbo/objectives/{objective_id}/evidence-references
  request:
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - evidence_reference_id: string
          progress_log_id: string
          review_log_id: string
          reference_type: string
          reference_uri: string
          reference_label: string
          uploaded_at: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 12. TASK / PROJECT LINK APIs
# ============================================================

attach_task_link:
  endpoint: POST /api/mbo/objectives/{objective_id}/task-links
  request:
    linked_task_id: string
    link_role: string
  response:
    status: ok
    data:
      objective_task_link_id: string
      linked_at: string
    meta:
      request_id: string
      timestamp: string

list_task_links:
  endpoint: GET /api/mbo/objectives/{objective_id}/task-links
  request:
    {}
  response:
    status: ok
    data:
      items:
        - objective_task_link_id: string
          linked_task_id: string
          link_role: string
          linked_at: string
      total_count: number
    meta:
      request_id: string
      timestamp: string

attach_project_link:
  endpoint: POST /api/mbo/objectives/{objective_id}/project-links
  request:
    linked_project_id: string
    link_role: string
  response:
    status: ok
    data:
      objective_project_link_id: string
      linked_at: string
    meta:
      request_id: string
      timestamp: string

list_project_links:
  endpoint: GET /api/mbo/objectives/{objective_id}/project-links
  request:
    {}
  response:
    status: ok
    data:
      items:
        - objective_project_link_id: string
          linked_project_id: string
          link_role: string
          linked_at: string
      total_count: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 13. KPI / EXECUTIVE SUMMARY APIs
# ============================================================

get_KPI_dashboard:
  endpoint: GET /api/mbo/kpi-dashboard
  request:
    period_id: string
    owner_user_id: string
    manager_user_id: string
    department_id: string
  response:
    status: ok
    data:
      summary_cards:
        total_objectives: number
        active_objectives: number
        finalized_objectives: number
        overdue_updates: number
        overdue_reviews: number
      charts:
        progress_distribution: array
        status_distribution: array
        trend_by_period: array
    meta:
      request_id: string
      timestamp: string

get_executive_summary:
  endpoint: GET /api/mbo/executive-summary
  request:
    period_id: string
    department_id: string
    manager_user_id: string
  response:
    status: ok
    data:
      summary_cards:
        total_objectives: number
        active_objectives: number
        finalized_objectives: number
        ERP_failed_count: number
      status_matrix: array
      KPI_highlights: array
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 14. EXPORT / REMINDER JOB APIs
# ============================================================

create_aggregation_export_job:
  endpoint: POST /api/mbo/exports
  request:
    requested_by_user_id: string
    export_scope: string
    export_format: string
  response:
    status: ok
    data:
      aggregation_export_job_id: string
      job_status: queued
      requested_at: string
    meta:
      request_id: string
      timestamp: string

list_aggregation_export_jobs:
  endpoint: GET /api/mbo/exports
  request:
    requested_by_user_id: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - aggregation_export_job_id: string
          export_scope: string
          export_format: string
          job_status: string
          requested_at: string
          completed_at: string
          output_uri: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

create_reminder_batch_job:
  endpoint: POST /api/mbo/reminders/batch
  request:
    requested_by_user_id: string
    reminder_type: string
    target_scope: string
  response:
    status: ok
    data:
      reminder_batch_job_id: string
      job_status: queued
      requested_at: string
    meta:
      request_id: string
      timestamp: string

list_reminder_batch_jobs:
  endpoint: GET /api/mbo/reminders/batch
  request:
    requested_by_user_id: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - reminder_batch_job_id: string
          reminder_type: string
          target_scope: string
          job_status: string
          requested_at: string
          completed_at: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

# ============================================================
# 15. ERP HISTORY / RESEND APIs
# ============================================================

list_ERP_transmission_history:
  endpoint: GET /api/mbo/erp-transmissions
  request:
    objective_id: string
    ERP_send_status: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - transmission_history_id: string
          objective_id: string
          evaluation_id: string
          ERP_send_status: string
          sent_at: string
          failed_at: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string

create_ERP_resend_job:
  endpoint: POST /api/mbo/erp-transmissions/{transmission_history_id}/resend
  request:
    requested_by_user_id: string
    resend_reason: string
  response:
    status: ok
    data:
      ERP_resend_job_id: string
      resend_status: queued
      requested_at: string
    meta:
      request_id: string
      timestamp: string

list_ERP_resend_jobs:
  endpoint: GET /api/mbo/erp-resend-jobs
  request:
    requested_by_user_id: string
    page: number
    page_size: number
  response:
    status: ok
    data:
      items:
        - ERP_resend_job_id: string
          transmission_history_id: string
          resend_reason: string
          resend_status: string
          requested_at: string
          completed_at: string
      total_count: number
      page: number
      page_size: number
    meta:
      request_id: string
      timestamp: string
