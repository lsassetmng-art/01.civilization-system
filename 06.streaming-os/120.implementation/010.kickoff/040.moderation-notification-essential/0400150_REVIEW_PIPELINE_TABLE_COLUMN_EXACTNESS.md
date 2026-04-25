# ============================================================
# K4 REVIEW PIPELINE TABLE-COLUMN EXACTNESS
# ============================================================

status: exact-table-column
domain: review-pipeline
prepared_by: Zero
owner: Boss

tables:
- review_queue_items
- ai_review_jobs
- human_review_tasks
- review_decision_records
- review_dimension_results
- re_review_requests
- restoration_review_records
- review_alert_records
- escalation_alert_records

review_queue_items_required_columns:
- review_queue_item_id
- target_type
- target_id
- priority_class
- assignment_state
- created_at
- updated_at

ai_review_jobs_required_columns:
- ai_review_job_id
- review_queue_item_id
- job_state
- created_at
- updated_at

human_review_tasks_required_columns:
- human_review_task_id
- review_queue_item_id
- assigned_reviewer_principal_id
- task_state
- created_at
- updated_at

review_decision_records_required_columns:
- review_decision_record_id
- review_queue_item_id
- decision_action
- decided_by_principal_id
- decided_at
- created_at
- updated_at

review_dimension_results_required_columns:
- review_dimension_result_id
- review_queue_item_id
- dimension_type
- result_state
- created_at
- updated_at

re_review_requests_required_columns:
- re_review_request_id
- target_type
- target_id
- request_state
- created_at
- updated_at

restoration_review_records_required_columns:
- restoration_review_record_id
- target_type
- target_id
- review_state
- created_at
- updated_at

review_alert_records_required_columns:
- review_alert_record_id
- target_type
- target_id
- alert_type
- priority_class
- created_at
- updated_at

escalation_alert_records_required_columns:
- escalation_alert_record_id
- target_type
- target_id
- alert_type
- priority_class
- created_at
- updated_at

recommended_constraints:
- fk(review_queue_item_id) across AI/human/decision/dimension tables
- check(priority_class in allowed set)
- check(assignment_state in allowed set)
- check(job_state in allowed set)
- check(task_state in allowed set)
- check(decision_action in allowed set)
- check(dimension_type in allowed set)
- check(result_state in allowed set)

recommended_indexes:
- review_queue_item_id indexes across related review tables
- target_type + target_id indexes
- assigned_reviewer_principal_id index for human_review_tasks
- priority_class indexes for alert tables
- updated_at indexes across review-side tables

semantic_notes:
- review queue item is intake/work coordination object
- review decision record is outcome object
- review dimension result is per-dimension finding object
- alert records remain alert objects, not queue-item substitutes

open_for_sql_precision_only:
- exact SQL type names
- exact fk actions
- exact partial index conditions
- exact overdue/due_at column additions if needed
