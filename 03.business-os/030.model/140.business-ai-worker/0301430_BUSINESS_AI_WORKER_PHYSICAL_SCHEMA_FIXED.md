# ============================================================
# BUSINESS AI WORKER PHYSICAL SCHEMA FIXED
# ============================================================

status: canonical
layer: model
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines the fixed physical schema set
for Business AI Worker foundation-side persistence.

schema_name:
business_os

# ============================================================
# 1. TABLE SET
# ============================================================

tables:
- ai_worker_template
- ai_worker_capability_profile
- ai_worker_employment
- ai_worker_assignment
- ai_worker_capacity_slot
- ai_worker_subscription
- ai_worker_lending
- ai_worker_reservation
- ai_worker_company_terminology
- ai_worker_company_knowledge_entry
- ai_worker_disclaimer
- ai_worker_consent
- ai_worker_advisory_session
- ai_worker_execution_task
- ai_worker_output_handoff
- ai_worker_usage_log
- ai_worker_audit_trace

# ============================================================
# 2. ai_worker_template
# ============================================================

primary_key:
- worker_template_id

columns:
- worker_template_id: uuid
- template_name: text
- default_rank: text
- default_knowledge_depth: text
- is_active: boolean
- created_at: timestamptz
- updated_at: timestamptz

# ============================================================
# 3. ai_worker_capability_profile
# ============================================================

primary_key:
- capability_profile_id

columns:
- capability_profile_id: uuid
- worker_template_id: uuid
- specialty: text
- knowledge_depth: text
- supports_advisory: boolean
- supports_execution: boolean
- supports_embedded_app_work: boolean
- supports_forecasting: boolean
- supports_management_assistance: boolean
- supports_improvement_assistance: boolean
- created_at: timestamptz
- updated_at: timestamptz

# ============================================================
# 4. ai_worker_employment
# ============================================================

primary_key:
- employment_id

columns:
- employment_id: uuid
- company_id: uuid
- worker_id: uuid
- worker_template_id: uuid
- subscribed_rank: text
- employment_status: text
- started_at: timestamptz
- ended_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- worker_id
- subscribed_rank
- employment_status

# ============================================================
# 5. ai_worker_assignment
# ============================================================

primary_key:
- assignment_id

columns:
- assignment_id: uuid
- company_id: uuid
- worker_id: uuid
- assignment_scope_type: text
- assignment_scope_id: text
- app_surface: text
- assigned_role_name: text
- assigned_at: timestamptz
- released_at: timestamptz
- created_at: timestamptz

indexes:
- company_id
- worker_id
- app_surface

# ============================================================
# 6. ai_worker_capacity_slot
# ============================================================

primary_key:
- capacity_slot_id

columns:
- capacity_slot_id: uuid
- company_id: uuid
- subscribed_rank: text
- slot_status: text
- current_lending_id: uuid
- reserved_for_reservation_id: uuid
- activated_at: timestamptz
- released_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- subscribed_rank
- slot_status

# ============================================================
# 7. ai_worker_subscription
# ============================================================

primary_key:
- subscription_id

columns:
- subscription_id: uuid
- company_id: uuid
- subscribed_rank: text
- subscribed_capacity: integer
- active_from: timestamptz
- active_until: timestamptz
- billing_status: text
- auto_renew: boolean
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- subscribed_rank
- billing_status

# ============================================================
# 8. ai_worker_lending
# ============================================================

primary_key:
- lending_id

columns:
- lending_id: uuid
- company_id: uuid
- worker_id: uuid
- capacity_slot_id: uuid
- granted_rank: text
- activity_mode: text
- world_scope: text
- specialty: text
- knowledge_depth: text
- app_surface: text
- task_summary: text
- actor_id: uuid
- lending_status: text
- granted_at: timestamptz
- expires_at: timestamptz
- released_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- worker_id
- capacity_slot_id
- lending_status
- activity_mode
- app_surface

# ============================================================
# 9. ai_worker_reservation
# ============================================================

primary_key:
- reservation_id

columns:
- reservation_id: uuid
- company_id: uuid
- requested_rank: text
- requested_activity_mode: text
- requested_world_scope: text
- requested_specialty: text
- requested_knowledge_depth_min: text
- requested_app_surface: text
- requested_task_summary: text
- requested_duration_minutes: integer
- requested_priority: text
- actor_id: uuid
- queue_position: integer
- reservation_status: text
- estimated_available_at: timestamptz
- requested_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- requested_rank
- reservation_status
- queue_position

# ============================================================
# 10. ai_worker_company_terminology
# ============================================================

primary_key:
- terminology_id

columns:
- terminology_id: uuid
- company_id: uuid
- term: text
- meaning: text
- department_scope: text
- specialty_scope: text
- synonym_group: text
- is_active: boolean
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- term
- specialty_scope

# ============================================================
# 11. ai_worker_company_knowledge_entry
# ============================================================

primary_key:
- knowledge_entry_id

columns:
- knowledge_entry_id: uuid
- company_id: uuid
- title: text
- specialty: text
- knowledge_depth: text
- content_type: text
- content_body: text
- source_type: text
- source_id: text
- reviewed_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- specialty
- knowledge_depth

# ============================================================
# 12. ai_worker_disclaimer
# ============================================================

primary_key:
- disclaimer_id

columns:
- disclaimer_id: uuid
- consultation_type: text
- specialty: text
- disclaimer_version: text
- disclaimer_text: text
- is_active: boolean
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- consultation_type
- specialty
- disclaimer_version
- is_active

# ============================================================
# 13. ai_worker_consent
# ============================================================

primary_key:
- consent_id

columns:
- consent_id: uuid
- company_id: uuid
- actor_id: uuid
- consultation_type: text
- disclaimer_version: text
- accepted: boolean
- consented_at: timestamptz
- expires_at: timestamptz
- created_at: timestamptz

indexes:
- company_id
- actor_id
- consultation_type
- disclaimer_version

# ============================================================
# 14. ai_worker_advisory_session
# ============================================================

primary_key:
- advisory_session_id

columns:
- advisory_session_id: uuid
- company_id: uuid
- worker_id: uuid
- lending_id: uuid
- consultation_type: text
- requested_specialty: text
- conversation_session_id: text
- disclaimer_version: text
- consent_id: uuid
- actor_id: uuid
- session_status: text
- started_at: timestamptz
- ended_at: timestamptz
- escalation_status: text
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- worker_id
- lending_id
- session_status
- consultation_type

# ============================================================
# 15. ai_worker_execution_task
# ============================================================

primary_key:
- execution_task_id

columns:
- execution_task_id: uuid
- company_id: uuid
- worker_id: uuid
- lending_id: uuid
- work_order_id: text
- task_type: text
- requested_specialty: text
- requested_output: text
- platform_target: text
- actor_id: uuid
- execution_status: text
- review_required: boolean
- approval_required: boolean
- started_at: timestamptz
- completed_at: timestamptz
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- worker_id
- lending_id
- execution_status
- task_type
- platform_target

# ============================================================
# 16. ai_worker_output_handoff
# ============================================================

primary_key:
- output_handoff_id

columns:
- output_handoff_id: uuid
- company_id: uuid
- execution_task_id: uuid
- output_type: text
- output_title: text
- output_body: text
- target_app_surface: text
- review_required: boolean
- approval_required: boolean
- handoff_status: text
- actor_id: uuid
- created_at: timestamptz
- updated_at: timestamptz

indexes:
- company_id
- execution_task_id
- handoff_status
- target_app_surface

# ============================================================
# 17. ai_worker_usage_log
# ============================================================

primary_key:
- usage_log_id

columns:
- usage_log_id: uuid
- company_id: uuid
- worker_id: uuid
- lending_id: uuid
- activity_mode: text
- app_surface: text
- actor_id: uuid
- started_at: timestamptz
- ended_at: timestamptz
- outcome_type: text
- created_at: timestamptz

indexes:
- company_id
- worker_id
- lending_id
- activity_mode
- app_surface

# ============================================================
# 18. ai_worker_audit_trace
# ============================================================

primary_key:
- audit_trace_id

columns:
- audit_trace_id: uuid
- company_id: uuid
- worker_id: uuid
- lending_id: uuid
- reservation_id: uuid
- advisory_session_id: uuid
- execution_task_id: uuid
- output_handoff_id: uuid
- consent_id: uuid
- trace_type: text
- trace_payload: text
- created_at: timestamptz

indexes:
- company_id
- worker_id
- lending_id
- reservation_id
- advisory_session_id
- execution_task_id
- output_handoff_id
- consent_id
- trace_type

# ============================================================
# 19. FIXED MAPPING TO API PAYLOAD
# ============================================================

availability_query_maps_to:
- ai_worker_capacity_slot
- ai_worker_subscription
- ai_worker_capability_profile
- ai_worker_employment

lend_request_maps_to:
- ai_worker_lending
- ai_worker_capacity_slot
- ai_worker_usage_log

reservation_request_maps_to:
- ai_worker_reservation

release_request_maps_to:
- ai_worker_lending
- ai_worker_capacity_slot
- ai_worker_usage_log

disclaimer_fetch_maps_to:
- ai_worker_disclaimer

consent_submit_maps_to:
- ai_worker_consent

advisory_start_maps_to:
- ai_worker_advisory_session
- ai_worker_lending

execution_start_maps_to:
- ai_worker_execution_task
- ai_worker_lending

status_query_maps_to:
- ai_worker_lending
- ai_worker_reservation
- ai_worker_advisory_session
- ai_worker_execution_task
- ai_worker_output_handoff

output_handoff_maps_to:
- ai_worker_output_handoff

# ============================================================
# 20. OFFICIAL SUMMARY
# ============================================================

This file fixes the Business AI Worker physical schema set
to match the canonical exact payload interfaces.

API names and physical column names are intentionally aligned
to reduce ambiguity during implementation.
