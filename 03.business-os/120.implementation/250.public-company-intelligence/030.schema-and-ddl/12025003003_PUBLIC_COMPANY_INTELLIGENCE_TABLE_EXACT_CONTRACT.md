# ============================================================
# PUBLIC COMPANY INTELLIGENCE TABLE EXACT CONTRACT
# ============================================================

status: canonical
system: business-os
layer: implementation
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
db_reviewer_required:
- 佐藤（DB担当）
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

table_contracts:
- public_source_registry: source_code, source_type, enabled, priority, auth_mode, refresh_target_hours
- company_public_source_snapshot: source_id, fetch_basis_version, source_url, retrieved_at, raw_checksum, raw_payload_ref, parse_state, status
- officer_public_source_snapshot: source_id, fetch_basis_version, source_url, retrieved_at, raw_checksum, raw_payload_ref, parse_state, status
- company_public_profile: normalized_company_key, canonical_company_name, corporate_number, listed_status, market_name, website_url, ir_url, phone_number, postal_address, representative_name, confidence_score, freshness_at, profile_state
- company_officer_profile: company_public_profile_id, normalized_officer_key, canonical_officer_name, canonical_title, title_family, representative_flag, confidence_score, freshness_at, profile_state
- public_profile_source_link: company_public_profile_id nullable, company_officer_profile_id nullable, source_id, company_snapshot_id nullable, officer_snapshot_id nullable, linked_fields, winner_flag
- company_normalization_candidate: observed_company_name, observed_identifier, observed_domain, normalized_company_key_candidate, confidence_score, recommended_action, reason_codes, matched_profile_id, state
- officer_normalization_candidate: company_public_profile_id nullable, observed_officer_name, observed_title, normalized_officer_key_candidate, confidence_score, reason_codes, matched_profile_id, state
- public_data_review_queue: review_reason_code, priority, queue_state, assignee, requested_publish_mode, reviewer_note
- company_batch_job: job_scope, state, planned_source_count, completed_source_count, failed_source_count, started_at, ended_at, frozen_source_basis
- company_batch_job_log: company_batch_job_id, source_id nullable, log_level, message_code, message_text, created_at
- public_data_change_audit: actor_type, actor_id, action_type, target_type, target_id, reason_code, before_ref, after_ref, created_at

nullability_rule:
- nullability follows explicit optional business meaning only
- absence of strong evidence must remain nullable rather than invented
