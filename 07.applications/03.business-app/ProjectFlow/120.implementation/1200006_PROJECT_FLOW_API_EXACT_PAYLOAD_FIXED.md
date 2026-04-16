# ============================================================
# PROJECT FLOW API EXACT PAYLOAD FIXED
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Fixes exact request and response payloads
between ProjectFlow and shared BusinessOS integration capability.

principles:
- ProjectFlow does not call ERP directly
- ProjectFlow calls shared BusinessOS-controlled integration path
- all payloads are explicit
- error responses are machine-readable
- retryability must be explicit

# ============================================================
# 1. REQUEST PROJECT IMPORT
# ============================================================

endpoint:
POST /shared/business/projectflow/import-requests

request_body_json:
{
  "request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "import_scope": "all|project_codes|single_project",
  "project_codes": [
    "PRJ-0001",
    "PRJ-0002"
  ],
  "include_reference_masters": true,
  "force_refresh": false,
  "mapping_version": "v1",
  "requested_at": "2026-04-10T12:00:00+09:00"
}

success_response_json:
{
  "request_id": "uuid",
  "sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:00:01+09:00",
  "message": "import request accepted"
}

error_response_json:
{
  "request_id": "uuid",
  "status": "rejected",
  "error_code": "INVALID_IMPORT_SCOPE",
  "error_message": "import_scope is invalid",
  "retryable": false
}

# ============================================================
# 2. REQUEST PROJECT EXPORT
# ============================================================

endpoint:
POST /shared/business/projectflow/export-requests

request_body_json:
{
  "request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "target_project_id": "uuid",
  "export_targets": [
    "project_progress",
    "milestone_status",
    "time_actuals",
    "project_completion"
  ],
  "include_note": false,
  "note_text": "",
  "mapping_version": "v1",
  "requested_at": "2026-04-10T12:10:00+09:00"
}

success_response_json:
{
  "request_id": "uuid",
  "sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:10:01+09:00",
  "message": "export request accepted"
}

error_response_json:
{
  "request_id": "uuid",
  "status": "rejected",
  "error_code": "EXPORT_TARGET_NOT_ALLOWED",
  "error_message": "one or more export targets are not allowed",
  "retryable": false
}

# ============================================================
# 3. REQUEST SYNC RETRY
# ============================================================

endpoint:
POST /shared/business/projectflow/sync-retries

request_body_json:
{
  "retry_request_id": "uuid",
  "company_id": "uuid",
  "requested_by_user_id": "uuid",
  "target_sync_request_id": "uuid",
  "retry_reason": "mapping fixed and ready to retry",
  "requested_at": "2026-04-10T12:20:00+09:00"
}

success_response_json:
{
  "retry_request_id": "uuid",
  "new_sync_request_id": "uuid",
  "status": "accepted",
  "accepted_at": "2026-04-10T12:20:01+09:00"
}

error_response_json:
{
  "retry_request_id": "uuid",
  "status": "rejected",
  "error_code": "RETRY_NOT_ALLOWED",
  "error_message": "target sync request is not retryable",
  "retryable": false
}

# ============================================================
# 4. GET SYNC STATUS
# ============================================================

endpoint:
GET /shared/business/projectflow/sync-requests/{sync_request_id}

success_response_json:
{
  "sync_request_id": "uuid",
  "company_id": "uuid",
  "sync_direction": "import|export",
  "sync_type": "manual|scheduled|retry|initial_full_import|differential_import",
  "status": "queued|running|partially_failed|completed|failed|cancelled",
  "target_project_id": "uuid",
  "started_at": "2026-04-10T12:20:05+09:00",
  "finished_at": "2026-04-10T12:21:10+09:00",
  "retryable": true,
  "summary": {
    "total_entities": 12,
    "succeeded_entities": 10,
    "failed_entities": 2
  },
  "error_code": "PARTIAL_FAILURE",
  "error_message": "2 entities failed",
  "last_updated_at": "2026-04-10T12:21:10+09:00"
}

not_found_response_json:
{
  "sync_request_id": "uuid",
  "status": "not_found",
  "error_code": "SYNC_REQUEST_NOT_FOUND",
  "error_message": "sync request does not exist",
  "retryable": false
}

# ============================================================
# 5. GET SYNC ERROR DETAIL
# ============================================================

endpoint:
GET /shared/business/projectflow/sync-requests/{sync_request_id}/errors

success_response_json:
{
  "sync_request_id": "uuid",
  "status": "ok",
  "errors": [
    {
      "sync_log_id": "uuid",
      "target_entity_type": "project_task",
      "target_entity_id": "uuid",
      "field_name": "assignee_id",
      "error_code": "REFERENCE_NOT_FOUND",
      "error_message": "assignee reference does not exist",
      "retryable": true,
      "detected_at": "2026-04-10T12:21:00+09:00"
    }
  ]
}

# ============================================================
# 6. REQUEST SPREADSHEET EXPORT
# ============================================================

endpoint:
POST /projectflow/exports

request_body_json:
{
  "export_job_id": "uuid",
  "requested_by_user_id": "uuid",
  "export_format": "xlsx|csv",
  "target_scope": "project_list|task_list|milestone_list|issue_list|risk_list|time_entry_list|workload_list|progress_summary|sync_result_list",
  "filter_snapshot": {
    "project_id": "uuid",
    "status": [
      "active",
      "on_hold"
    ],
    "date_from": "2026-04-01",
    "date_to": "2026-04-30"
  },
  "selected_columns": [
    "project_name",
    "project_status",
    "progress_percent",
    "planned_end_date"
  ],
  "masking_option": "none|mask_sensitive|exclude_sensitive",
  "requested_at": "2026-04-10T12:30:00+09:00"
}

success_response_json:
{
  "export_job_id": "uuid",
  "status": "completed",
  "file_uri": "app://projectflow/exports/export_job_id.xlsx",
  "generated_at": "2026-04-10T12:30:03+09:00",
  "error_code": null,
  "error_message": null
}

error_response_json:
{
  "export_job_id": "uuid",
  "status": "failed",
  "file_uri": null,
  "generated_at": "2026-04-10T12:30:03+09:00",
  "error_code": "COLUMN_NOT_ALLOWED",
  "error_message": "one or more selected columns are not allowed"
}

# ============================================================
# 7. REQUEST PROGRESS REPORT DRAFT GENERATION
# ============================================================

endpoint:
POST /projectflow/report-drafts

request_body_json:
{
  "report_draft_id": "uuid",
  "project_id": "uuid",
  "requested_by_user_id": "uuid",
  "report_type": "weekly|monthly|customer|internal",
  "report_period_start": "2026-04-01",
  "report_period_end": "2026-04-07",
  "template_key": "customer_weekly_v1",
  "include_quantitative_summary": true,
  "include_qualitative_draft": true,
  "requested_at": "2026-04-10T12:40:00+09:00"
}

success_response_json:
{
  "report_draft_id": "uuid",
  "status": "completed",
  "generated_at": "2026-04-10T12:40:02+09:00",
  "quantitative_summary": {
    "progress_percent": 68,
    "completed_task_count": 25,
    "incomplete_task_count": 11,
    "overdue_task_count": 3,
    "open_issue_count": 4,
    "high_risk_count": 1,
    "time_actual_hours": 142.5
  },
  "qualitative_draft_text": "This period focused on milestone stabilization and delayed task recovery.",
  "next_actions_text": "Complete remaining overdue tasks and confirm customer-side dependencies.",
  "support_requests_text": "Need cross-team support for reference master alignment.",
  "customer_confirmation_items_text": "Please confirm revised milestone acceptance date."
}

error_response_json:
{
  "report_draft_id": "uuid",
  "status": "failed",
  "generated_at": "2026-04-10T12:40:02+09:00",
  "error_code": "TEMPLATE_NOT_FOUND",
  "error_message": "template_key does not exist"
}

# ============================================================
# 8. UPDATE PROGRESS REPORT DRAFT
# ============================================================

endpoint:
PUT /projectflow/report-drafts/{report_draft_id}

request_body_json:
{
  "edited_by_user_id": "uuid",
  "qualitative_draft_text": "Human-edited summary text.",
  "next_actions_text": "Human-edited next actions.",
  "support_requests_text": "Human-edited support request.",
  "customer_confirmation_items_text": "Human-edited confirmation items.",
  "approval_status": "draft|reviewed|approved",
  "updated_at": "2026-04-10T12:50:00+09:00"
}

success_response_json:
{
  "report_draft_id": "uuid",
  "status": "updated",
  "saved_at": "2026-04-10T12:50:01+09:00"
}

# ============================================================
# 9. GET REPORT DRAFT
# ============================================================

endpoint:
GET /projectflow/report-drafts/{report_draft_id}

success_response_json:
{
  "report_draft_id": "uuid",
  "project_id": "uuid",
  "report_type": "customer",
  "report_period_start": "2026-04-01",
  "report_period_end": "2026-04-07",
  "quantitative_summary": {
    "progress_percent": 68,
    "completed_task_count": 25,
    "incomplete_task_count": 11,
    "overdue_task_count": 3,
    "open_issue_count": 4,
    "high_risk_count": 1,
    "time_actual_hours": 142.5
  },
  "qualitative_draft_text": "Human-edited summary text.",
  "next_actions_text": "Human-edited next actions.",
  "support_requests_text": "Human-edited support request.",
  "customer_confirmation_items_text": "Human-edited confirmation items.",
  "approval_status": "reviewed",
  "created_at": "2026-04-10T12:40:02+09:00",
  "updated_at": "2026-04-10T12:50:01+09:00"
}

# ============================================================
# 10. ENUM FIX
# ============================================================

sync_status_enum:
- queued
- running
- partially_failed
- completed
- failed
- cancelled

sync_direction_enum:
- import
- export

sync_type_enum:
- manual
- scheduled
- retry
- initial_full_import
- differential_import

export_format_enum:
- xlsx
- csv

report_type_enum:
- weekly
- monthly
- customer
- internal

approval_status_enum:
- draft
- reviewed
- approved

masking_option_enum:
- none
- mask_sensitive
- exclude_sensitive

# ============================================================
# 11. FINAL RULE
# ============================================================

final_rules:
- ERP integration payloads are always routed through shared BusinessOS
- ProjectFlow local export/report payloads are application-local
- auto-generated report is draft only
- human review is mandatory before external use
