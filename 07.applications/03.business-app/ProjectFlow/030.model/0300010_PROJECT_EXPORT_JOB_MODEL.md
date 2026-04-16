# ============================================================
# PROJECT EXPORT JOB MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- export_job_id
- export_type
- export_format
- target_scope
- filter_snapshot_json
- column_selection_json
- masking_policy_snapshot_json
- requested_by
- requested_at
- completed_at
- status
- file_uri
- error_code
- error_message

notes:
export_format supports xlsx and csv.
target_scope identifies which operational view was exported.
