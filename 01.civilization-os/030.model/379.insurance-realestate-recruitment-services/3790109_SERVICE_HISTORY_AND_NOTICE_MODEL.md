# ============================================================
# SERVICE HISTORY AND NOTICE MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: service-history-and-notice

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HISTORY FAMILIES
# ============================================================

history_families:
- insurance_policy_history
- insurance_claim_history
- real_estate_contract_history
- real_estate_search_history
- recruitment_application_history
- recruitment_saved_job_history
- service_notice_history


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

history_fields:
- history_id
- service_family
- actor_id
- operator_id
- action_type
- action_summary
- state_snapshot
- notice_snapshot
- recorded_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Each service must preserve
an auditable action trail
appropriate to its domain.
