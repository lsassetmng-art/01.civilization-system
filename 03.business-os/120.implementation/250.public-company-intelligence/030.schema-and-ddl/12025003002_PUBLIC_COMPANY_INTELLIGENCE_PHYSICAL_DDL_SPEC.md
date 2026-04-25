# ============================================================
# PUBLIC COMPANY INTELLIGENCE PHYSICAL DDL SPEC
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

required_tables:
- public_source_registry
- company_public_source_snapshot
- officer_public_source_snapshot
- company_public_profile
- company_officer_profile
- public_profile_source_link
- company_normalization_candidate
- officer_normalization_candidate
- public_data_review_queue
- company_batch_job
- company_batch_job_log
- public_data_change_audit

required_primary_keys:
- every authoritative table uses uuid primary key
- read projections may use profile id plus generated projection timestamp

required_unique_constraints:
- public_source_registry.source_code
- company_public_profile.normalized_company_key
- company_officer_profile.normalized_officer_key

required_indexes:
- snapshot tables on source_id and retrieved_at desc
- profile tables on profile_state and freshness_at
- review queue on queue_state and priority
- batch job log on company_batch_job_id and created_at
- audit on target_type, target_id, created_at desc

required_foreign_keys:
- snapshots.source_id -> public_source_registry
- officer profile.company_public_profile_id -> company_public_profile
- source link.company_public_profile_id -> company_public_profile nullable
- source link.company_officer_profile_id -> company_officer_profile nullable
- review queue candidate refs -> normalization candidate tables nullable

rules:
- raw evidence storage and final profile storage are logically separated
- audit storage is append-only
- projection tables or materialized views are rebuildable from authority tables
