# ============================================================
# PUBLIC COMPANY INTELLIGENCE TABLE EXACT CONTRACT STYLE ALIGNED V2
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

final_alignment:
- source tables: public_source_registry, company_public_source_snapshot, officer_public_source_snapshot
- profile tables: company_public_profile, company_officer_profile, public_profile_source_link
- candidate tables: company_normalization_candidate, officer_normalization_candidate
- governance tables: public_data_review_queue, public_data_change_audit
- batch tables: company_batch_job, company_batch_job_log

column_alignment_examples:
- company_public_profile.profile_state
- company_officer_profile.profile_state
- company_batch_job.state
- public_data_review_queue.queue_state
- company_public_source_snapshot.parse_state

rule:
- when style-alignment conflicts with older draft naming, this file wins
