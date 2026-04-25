# ============================================================
# AI OPERATION DESK DB DDL FREEZE DESIGN
# ============================================================

status: freeze-candidate
app: AIOperationDesk
layer: infrastructure
owner: Boss
prepared_by: Zero

schema:
- business

ddl_scope:
- supported app support tables
- operation request tables
- resident context tables
- work order tables
- review / approval tables
- execution / failure / retry tables
- audit / notification / summary tables

tables_v1:
- business.aiod_supported_app_registry
- business.aiod_supported_app_task_type
- business.aiod_supported_app_qa_scope
- business.aiod_supported_app_write_surface
- business.aiod_operation_request
- business.aiod_operation_request_attachment
- business.aiod_resident_context_snapshot
- business.aiod_work_order
- business.aiod_work_order_step
- business.aiod_work_order_target_binding
- business.aiod_work_order_output_binding
- business.aiod_review_request
- business.aiod_approval_request
- business.aiod_execution_job
- business.aiod_execution_step_run
- business.aiod_failure_record
- business.aiod_retry_plan
- business.aiod_audit_trace
- business.aiod_notification_rule
- business.aiod_notification_event
- business.aiod_summary_batch
- business.aiod_summary_batch_item

index_policy:
- unique on app_code in supported app registry
- foreign key indexes for all child tables
- scheduled_at index on work order
- work_order_status index on work order
- job_status index on execution job
- retry_status + next_retry_at on retry plan
- created_at index on audit trace and notification event
- batch_type + batch_window_end_at on summary batch

explicit_non_tables:
- no aiworker canonical truth tables here
- no raw cx22073jw materialization tables here
- no unrestricted direct-write shortcut tables here

next_step:
- convert this DDL freeze design into exact SQL DDL
- ensure naming aligns with project schema conventions
