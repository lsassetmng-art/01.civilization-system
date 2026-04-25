# ============================================================
# AI OPERATION DESK EXACT DOMAIN MODEL
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: model
owner: Boss
prepared_by: Zero

purpose:
Define the exact business-side domain model for AI Operation Desk.
This document covers only the operation-control side.
It does not redefine AiworkerOS canonical worker truth.

# ------------------------------------------------------------
# 1. ROOT ENTITY SET
# ------------------------------------------------------------

root_entities:
- supported_app_registry
- supported_app_task_type
- supported_app_qa_scope
- supported_app_write_surface
- operation_request
- operation_request_attachment
- resident_context_snapshot
- work_order
- work_order_step
- work_order_target_binding
- work_order_output_binding
- review_request
- approval_request
- execution_job
- execution_step_run
- retry_plan
- failure_record
- audit_trace
- notification_rule
- notification_event
- summary_batch
- summary_batch_item

# ------------------------------------------------------------
# 2. SUPPORTED APP REGISTRY
# ------------------------------------------------------------

supported_app_registry:
  purpose:
    Defines which apps are supported for explanation, QA, draft assist,
    resident surface support, and governed execution.
  canonical_owner:
    AIOperationDesk / business
  key_fields:
    - supported_app_id
    - app_code
    - app_name
    - app_category
    - app_summary
    - app_purpose
    - support_status
    - resident_surface_supported
    - help_mode_supported
    - operation_qa_supported
    - execution_supported
    - created_at
    - updated_at
  rules:
    - unsupported apps cannot receive app-specific QA
    - unsupported apps cannot receive governed execution requests
    - resident_surface_supported is true only for ERP and Builder families in v1

supported_app_task_type:
  key_fields:
    - supported_app_task_type_id
    - supported_app_id
    - task_code
    - task_name
    - lane_type
    - draft_capable
    - review_required_default
    - approval_required_default
    - is_active

supported_app_qa_scope:
  key_fields:
    - supported_app_qa_scope_id
    - supported_app_id
    - qa_scope_code
    - qa_scope_name
    - is_enabled

supported_app_write_surface:
  key_fields:
    - supported_app_write_surface_id
    - supported_app_id
    - write_surface_type
    - write_surface_name
    - route_code
    - is_enabled
  allowed_values:
    - command_row
    - draft_row
    - staging_row
    - official_intake_table
    - controlled_function

# ------------------------------------------------------------
# 3. REQUEST AND CONTEXT
# ------------------------------------------------------------

operation_request:
  purpose:
    Represents the original user intent received from text or voice.
  key_fields:
    - operation_request_id
    - request_channel
    - request_text
    - voice_transcript
    - requested_start_at
    - supported_app_id
    - lane_type
    - requester_user_id
    - source_surface_type
    - priority_level
    - request_status
    - created_at
    - updated_at
  request_channel_values:
    - text
    - voice
  source_surface_type_values:
    - main_console
    - erp_resident_surface
    - builder_resident_surface
    - app_help_surface
    - pocketsecretary_exception
  lane_type_values:
    - consult
    - draft
    - execution
  request_status_values:
    - received
    - parsed
    - compiled
    - cancelled

operation_request_attachment:
  key_fields:
    - operation_request_attachment_id
    - operation_request_id
    - attachment_type
    - storage_ref
    - original_name
    - mime_type
    - created_at

resident_context_snapshot:
  purpose:
    Stores the in-context surface state used during help or execution request creation.
  key_fields:
    - resident_context_snapshot_id
    - source_surface_type
    - supported_app_id
    - current_screen_code
    - current_module_code
    - current_record_ref
    - current_field_code
    - current_company_ref
    - latest_error_code
    - entered_value_json
    - permission_context_json
    - captured_at

# ------------------------------------------------------------
# 4. WORK ORDER
# ------------------------------------------------------------

work_order:
  purpose:
    Compiled governed work package created from an operation request.
  key_fields:
    - work_order_id
    - operation_request_id
    - supported_app_id
    - lane_type
    - work_type_code
    - risk_class
    - review_required
    - approval_required
    - execution_mode
    - trigger_mode
    - scheduled_at
    - work_order_status
    - created_at
    - updated_at
  execution_mode_values:
    - immediate
    - scheduled
    - trigger_wait
  trigger_mode_values:
    - none
    - time
    - explicit_click
    - retry
    - pocketsecretary_exception
  work_order_status_values:
    - draft
    - waiting_trigger
    - preflight
    - review_pending
    - approval_pending
    - ready
    - running
    - completed
    - failed
    - retry_waiting
    - cancelled

work_order_step:
  key_fields:
    - work_order_step_id
    - work_order_id
    - step_order
    - step_code
    - step_name
    - step_type
    - write_surface_type
    - is_required
    - created_at
  step_type_values:
    - explain
    - qa
    - draft_prepare
    - draft_write
    - review_prepare
    - approval_prepare
    - execute_bridge
    - notify
    - summarize

work_order_target_binding:
  key_fields:
    - work_order_target_binding_id
    - work_order_id
    - binding_type
    - target_ref
    - target_label
    - created_at
  binding_type_values:
    - company
    - customer
    - record
    - voucher
    - builder_asset
    - screen
    - module

work_order_output_binding:
  key_fields:
    - work_order_output_binding_id
    - work_order_id
    - output_type
    - destination_type
    - destination_ref
    - created_at
  output_type_values:
    - explanation
    - qa_answer
    - draft_document
    - provisional_voucher
    - review_package
    - approval_package
    - retry_package
    - summary_digest

# ------------------------------------------------------------
# 5. REVIEW / APPROVAL
# ------------------------------------------------------------

review_request:
  key_fields:
    - review_request_id
    - work_order_id
    - review_reason_code
    - reviewer_user_id
    - review_status
    - requested_at
    - decided_at
  review_status_values:
    - pending
    - approved
    - returned
    - rejected

approval_request:
  key_fields:
    - approval_request_id
    - work_order_id
    - approval_reason_code
    - approver_user_id
    - approval_status
    - requested_at
    - decided_at
  approval_status_values:
    - pending
    - approved
    - returned
    - rejected

# ------------------------------------------------------------
# 6. EXECUTION / FAILURE / RETRY
# ------------------------------------------------------------

execution_job:
  key_fields:
    - execution_job_id
    - work_order_id
    - job_status
    - started_at
    - ended_at
    - created_at
  job_status_values:
    - queued
    - running
    - succeeded
    - failed
    - cancelled

execution_step_run:
  key_fields:
    - execution_step_run_id
    - execution_job_id
    - work_order_step_id
    - step_status
    - write_surface_type
    - result_ref
    - started_at
    - ended_at
  step_status_values:
    - queued
    - running
    - succeeded
    - failed
    - skipped

failure_record:
  key_fields:
    - failure_record_id
    - execution_job_id
    - execution_step_run_id
    - failure_code
    - failure_summary
    - retryable_flag
    - created_at

retry_plan:
  key_fields:
    - retry_plan_id
    - work_order_id
    - failure_record_id
    - retry_status
    - next_retry_at
    - retry_count
    - created_at
  retry_status_values:
    - proposed
    - scheduled
    - executed
    - stopped

# ------------------------------------------------------------
# 7. AUDIT / NOTIFICATION / SUMMARY
# ------------------------------------------------------------

audit_trace:
  key_fields:
    - audit_trace_id
    - work_order_id
    - event_type
    - event_summary
    - actor_type
    - actor_ref
    - created_at

notification_rule:
  key_fields:
    - notification_rule_id
    - user_id
    - notify_review_pending
    - notify_approval_pending
    - notify_confirmation_required
    - notify_execution_failed
    - notify_retry_scheduled
    - notify_completed_with_warning
    - notify_completed_summary_available
    - line_destination_ref
    - is_active

notification_event:
  key_fields:
    - notification_event_id
    - work_order_id
    - notification_type
    - destination_type
    - destination_ref
    - delivery_status
    - created_at

summary_batch:
  key_fields:
    - summary_batch_id
    - batch_type
    - batch_window_start_at
    - batch_window_end_at
    - batch_status
    - created_at
  batch_type_values:
    - execution_summary
    - review_summary
    - failure_summary
    - output_summary
    - audit_digest

summary_batch_item:
  key_fields:
    - summary_batch_item_id
    - summary_batch_id
    - work_order_id
    - item_summary
    - severity_level
    - created_at

# ------------------------------------------------------------
# 8. EXPLICIT NON-OWNERSHIP
# ------------------------------------------------------------

non_owned_truth:
- AI worker canonical truth
- AI worker rank truth
- AI worker domain truth
- AI worker role truth
- company_style_profile truth
- worker growth truth
- worker repair / rebuild truth

owned_here:
- supported app support registry
- operation request truth
- work order truth
- review / approval routing truth
- retry / failure / queue truth
- notification preference truth
- batch summary truth
