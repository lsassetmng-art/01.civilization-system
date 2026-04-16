# ============================================================
# PUBLIC COMPANY INTELLIGENCE STATE ENUM MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: public_company_intelligence_state_enum
primary_key: enum model

truth_boundary:
- enumeration authority for fetch parse normalization profile review and batch states

write_authority:
- design authority

major_states:
- canonical

relations:
- all public-company-intelligence objects consume these enums

fields:
- fetch_status planned|fetching|fetched|partial|failed|skipped_source_disabled
- parse_state raw_only|parsed|partial_parse|parse_failed
- normalization_state unnormalized|candidate_built|review_required|auto_merge_ready|merged|rejected
- profile_state draft|active|needs_review|superseded|source_disabled_hold|retired
- review_state none|queued|in_review|approved|rejected|escalated
- batch_job_state planned|running|partial_success|succeeded|failed|cancelled

model_rules:
- state additions require controlled versioning
- consumer code must treat unknown future values safely
