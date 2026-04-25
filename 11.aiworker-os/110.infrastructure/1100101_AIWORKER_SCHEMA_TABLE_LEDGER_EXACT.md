# ============================================================
# AIWORKER SCHEMA TABLE LEDGER EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact table ledger for aiworker schema.

schema:
- aiworker

table_groups:

A. master and identity
- aiworker.worker_master
  primary_key: worker_id
  core_columns:
  - worker_code
  - display_label
  - employee_type
  - rank_code
  - domain_code
  - role_code
  - lifecycle_status
  - provider_company_id
  - company_style_profile_code
  - active_flag
  - suspended_flag
  - retired_flag
  - created_at
  - updated_at

- aiworker.developer_company_master
  primary_key: developer_company_id
  core_columns:
  - developer_company_code
  - developer_company_name
  - default_company_style_profile_code
  - active_flag
  - created_at
  - updated_at

- aiworker.company_style_policy
  primary_key: company_style_policy_id
  core_columns:
  - developer_company_id
  - company_style_profile_code
  - proposal_tendency_code
  - fallback_tendency_code
  - escalation_tendency_code
  - tone_policy_code
  - restricted_domain_policy_summary
  - active_flag
  - created_at
  - updated_at

B. tendency
- aiworker.company_ai_usage_tendency
  primary_key: company_ai_usage_tendency_id
  core_columns:
  - tenant_company_id
  - initiative_preference_code
  - explanation_depth_preference_code
  - approval_strictness_tendency_code
  - retry_tolerance_tendency_code
  - escalation_preference_code
  - automation_comfort_band_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.user_ai_usage_tendency
  primary_key: user_ai_usage_tendency_id
  core_columns:
  - tenant_user_id
  - interaction_comfort_band_code
  - response_length_preference_code
  - summary_preference_code
  - support_style_preference_code
  - initiative_preference_code
  - review_frequency_preference_code
  - effective_from
  - effective_to
  - updated_at

C. growth and capability
- aiworker.worker_growth_profile
  primary_key: worker_growth_profile_id
  core_columns:
  - worker_id
  - growth_level
  - stability_score
  - recovery_learning_score
  - suggestion_effectiveness_score
  - escalation_accuracy_score
  - updated_at

- aiworker.worker_growth_event
  primary_key: worker_growth_event_id
  core_columns:
  - worker_id
  - growth_event_type
  - event_score_delta
  - summary_code
  - occurred_at
  - recorded_at

- aiworker.worker_capability_snapshot
  primary_key: worker_capability_snapshot_id
  core_columns:
  - worker_id
  - snapshot_at
  - capability_band_code
  - specialization_summary_code
  - confidence_band_code
  - recorded_at

- aiworker.worker_domain_proficiency
  primary_key: worker_domain_proficiency_id
  core_columns:
  - worker_id
  - domain_code
  - proficiency_score
  - score_band_code
  - measured_at
  - updated_at

- aiworker.worker_role_proficiency
  primary_key: worker_role_proficiency_id
  core_columns:
  - worker_id
  - role_code
  - proficiency_score
  - score_band_code
  - measured_at
  - updated_at

D. assignment and availability
- aiworker.worker_assignment_state
  primary_key: worker_assignment_state_id
  core_columns:
  - worker_id
  - tenant_company_id
  - tenant_user_id
  - assigned_app_scope_code
  - assigned_project_id
  - assignment_state_code
  - assignment_lane_scope_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.worker_dispatch_reservation
  primary_key: worker_dispatch_reservation_id
  core_columns:
  - business_request_id
  - worker_id
  - reservation_state_code
  - reserved_from
  - reserved_to
  - priority_band_code
  - created_at
  - updated_at

- aiworker.worker_availability_state
  primary_key: worker_availability_state_id
  core_columns:
  - worker_id
  - availability_state_code
  - concurrent_capacity
  - current_load_band_code
  - effective_from
  - effective_to
  - updated_at

- aiworker.worker_queue_membership
  primary_key: worker_queue_membership_id
  core_columns:
  - worker_id
  - queue_family_code
  - queue_priority_band_code
  - queue_position
  - last_assignment_at
  - current_load_band_code
  - updated_at

E. affinity and fit
- aiworker.worker_company_affinity
  primary_key: worker_company_affinity_id
  core_columns:
  - worker_id
  - tenant_company_id
  - company_fit_score
  - trust_alignment_score
  - communication_fit_score
  - updated_at

- aiworker.worker_user_affinity
  primary_key: worker_user_affinity_id
  core_columns:
  - worker_id
  - tenant_user_id
  - user_fit_score
  - trust_alignment_score
  - communication_fit_score
  - updated_at

- aiworker.worker_assignment_fit_profile
  primary_key: worker_assignment_fit_profile_id
  core_columns:
  - worker_id
  - app_scope_code
  - assignment_fit_score
  - fit_reason_summary_code
  - updated_at

F. restricted and privileged
- aiworker.worker_privileged_profile
  primary_key: worker_privileged_profile_id
  core_columns:
  - worker_id
  - privileged_context_code
  - privileged_gate_code
  - active_flag
  - updated_at

- aiworker.worker_restricted_handling_policy
  primary_key: worker_restricted_handling_policy_id
  core_columns:
  - worker_id
  - restricted_domain_code
  - handling_policy_code
  - escalation_required_flag
  - updated_at

- aiworker.worker_exception_control_state
  primary_key: worker_exception_control_state_id
  core_columns:
  - worker_id
  - exception_state_code
  - exception_reason_code
  - opened_at
  - closed_at
  - updated_at

G. audit and history
- aiworker.worker_state_change_log
  primary_key: worker_state_change_log_id
  core_columns:
  - worker_id
  - state_family_code
  - old_state_code
  - new_state_code
  - change_reason_code
  - changed_at
  - changed_by

- aiworker.worker_assignment_history
  primary_key: worker_assignment_history_id
  core_columns:
  - worker_id
  - tenant_company_id
  - tenant_user_id
  - app_scope_code
  - assignment_state_code
  - started_at
  - ended_at
  - recorded_at

- aiworker.worker_repair_history
  primary_key: worker_repair_history_id
  core_columns:
  - worker_id
  - repair_ticket_code
  - repair_state_code
  - repair_reason_code
  - opened_at
  - closed_at
  - recorded_at

- aiworker.worker_rebuild_history
  primary_key: worker_rebuild_history_id
  core_columns:
  - worker_id
  - rebuild_ticket_code
  - rebuild_state_code
  - rebuild_reason_code
  - opened_at
  - closed_at
  - recorded_at

hard_rule:
Worker truth tables live in aiworker only.
