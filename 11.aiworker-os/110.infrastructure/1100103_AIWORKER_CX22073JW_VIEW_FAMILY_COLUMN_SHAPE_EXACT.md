# ============================================================
# AIWORKER CX22073JW VIEW FAMILY COLUMN SHAPE EXACT
# ============================================================

status: exact-infrastructure
system: AiworkerOS
layer: 110.infrastructure
owner: Boss
prepared_by: Zero

purpose:
Freeze the first exact column shape for cx22073jw AI-worker-only read families.

VF200_AIWORKER_PROFILE_SAFE:
- worker_id
- worker_code
- display_label
- lifecycle_status
- active_flag

VF201_AIWORKER_ROLE_AND_DOMAIN_SAFE:
- worker_id
- domain_code
- role_code
- rank_code
- lane_scope_summary_code

VF202_AIWORKER_STYLE_PROFILE_SAFE:
- worker_id
- company_style_profile_code
- proposal_tendency_code
- fallback_tendency_code
- escalation_tendency_code

VF210_COMPANY_AI_TENDENCY_SAFE:
- tenant_company_id
- initiative_preference_code
- explanation_depth_preference_code
- approval_strictness_tendency_code
- retry_tolerance_tendency_code

VF211_COMPANY_AI_OPERATIONAL_PREFERENCE_SAFE:
- tenant_company_id
- escalation_preference_code
- automation_comfort_band_code
- effective_from
- effective_to

VF220_USER_AI_TENDENCY_SAFE:
- tenant_user_id
- interaction_comfort_band_code
- support_style_preference_code
- initiative_preference_code

VF221_USER_AI_RESPONSE_PREFERENCE_SAFE:
- tenant_user_id
- response_length_preference_code
- summary_preference_code
- review_frequency_preference_code

VF230_WORKER_GROWTH_SUMMARY:
- worker_id
- growth_level
- stability_score
- recovery_learning_score
- suggestion_effectiveness_score

VF231_WORKER_CAPABILITY_SNAPSHOT_SAFE:
- worker_id
- snapshot_at
- capability_band_code
- specialization_summary_code
- confidence_band_code

VF232_WORKER_PROFICIENCY_SUMMARY:
- worker_id
- domain_code
- role_code
- proficiency_score
- score_band_code

VF240_WORKER_ASSIGNMENT_SAFE:
- worker_id
- tenant_company_id
- tenant_user_id
- assigned_app_scope_code
- assignment_state_code

VF241_WORKER_AVAILABILITY_SAFE:
- worker_id
- availability_state_code
- concurrent_capacity
- current_load_band_code

VF242_WORKER_QUEUE_AND_LOAD_SAFE:
- worker_id
- queue_family_code
- queue_priority_band_code
- queue_position
- current_load_band_code

VF250_WORKER_COMPANY_AFFINITY_SAFE:
- worker_id
- tenant_company_id
- company_fit_score
- trust_alignment_score
- communication_fit_score

VF251_WORKER_USER_AFFINITY_SAFE:
- worker_id
- tenant_user_id
- user_fit_score
- trust_alignment_score
- communication_fit_score

VF252_WORKER_ASSIGNMENT_FIT_SAFE:
- worker_id
- app_scope_code
- assignment_fit_score
- fit_reason_summary_code

VF260_WORKER_AUDIT_SUMMARY:
- worker_id
- state_family_code
- old_state_code
- new_state_code
- changed_at

VF261_WORKER_PRIVILEGED_CONTEXT:
- worker_id
- privileged_context_code
- privileged_gate_code
- active_flag

VF262_WORKER_RESTRICTED_HANDLING_CONTEXT:
- worker_id
- restricted_domain_code
- handling_policy_code
- escalation_required_flag

hard_rule:
These are safe, reduced, AI-worker-only shapes and not substitutes for raw truth tables.
