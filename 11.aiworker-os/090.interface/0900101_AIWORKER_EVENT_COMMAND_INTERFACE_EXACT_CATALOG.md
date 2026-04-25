# ============================================================
# AIWORKER EVENT COMMAND INTERFACE EXACT CATALOG
# ============================================================

status: exact-interface
system: AiworkerOS
layer: 090.interface
owner: Boss
prepared_by: Zero

purpose:
Freeze the command and event interface catalog used by AiworkerOS.

command_row_columns:
- command_id
- command_type
- source_system
- source_actor_type
- requested_lane
- requested_domain
- requested_role
- target_worker_id
- tenant_company_id
- tenant_user_id
- app_scope_code
- payload_ref
- requested_at
- requested_by
- command_status

draft_row_columns:
- draft_id
- command_id
- worker_id
- draft_type
- draft_summary
- draft_payload_ref
- draft_status
- created_at
- reviewed_at

staging_row_columns:
- staging_id
- draft_id
- staging_type
- normalized_payload_ref
- gate_code
- staging_status
- created_at

official_intake_columns:
- intake_id
- staging_id
- intake_type
- target_truth_surface
- controlled_function_code
- approval_ticket_id
- audit_required_flag
- intake_status
- submitted_at
- applied_at

event_columns:
- event_id
- event_type
- source_system
- source_entity_type
- source_entity_id
- related_business_request_id
- related_worker_id
- summary_code
- payload_ref
- emitted_at
