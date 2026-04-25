# ============================================================
# AIWORKER OS SCHEMA AND VIEW INFRASTRUCTURE
# ============================================================

status: canonical
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

canonical_schema:
- aiworker

primary_aiworker_tables:
- worker_master
- worker_domain_role_binding
- developer_company_style_policy
- company_ai_usage_tendency
- user_ai_usage_tendency
- worker_growth_profile
- worker_growth_event
- worker_capability_snapshot
- worker_domain_proficiency
- worker_role_proficiency
- worker_assignment_state
- worker_dispatch_reservation
- worker_availability_state
- worker_queue_membership
- worker_company_affinity
- worker_user_affinity
- worker_assignment_fit_profile
- worker_privileged_profile
- worker_restricted_handling_policy
- worker_exception_control_state
- worker_state_change_log
- worker_growth_audit_log
- worker_assignment_history
- worker_repair_history

controlled_write_surfaces:
- worker_command_row
- worker_draft_row
- worker_staging_row
- worker_official_intake_row
- fn_apply_worker_controlled_write
- fn_apply_worker_assignment_decision
- fn_publish_worker_summary

cx22073jw_view_family_targets:
- VF200 to VF262 as defined in integration design
- view-only for AI workers
- masked, summarized, and lane-aware

business_side_dependencies:
- approved dispatch request reference
- contract scope reference
- billing and approval reference
- ERP linkage reference when needed

final_rule:
Physical storage truth is aiworker.
Worker-readable projection is cx22073jw.
Business-facing commercial truth remains in business.
