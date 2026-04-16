# ============================================================
# PROJECT FLOW SPREADSHEET EXPORT CONTRACT
# ============================================================

status: canonical
layer: integration
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines export request and output contract at application boundary.

request_examples:
- export_project_list
- export_task_list
- export_milestone_list
- export_issue_list
- export_risk_list
- export_time_entry_list
- export_workload_list
- export_progress_summary
- export_sync_result_list

request_elements:
- export_format
- target_scope
- filter_snapshot
- selected_columns
- masking_option
- requester_id

response_elements:
- export_job_id
- status
- file_uri
- generated_at
- error_code
- error_message

rules:
- export must be permission-aware
- export output is snapshot-based
- file generation failure must be reviewable
