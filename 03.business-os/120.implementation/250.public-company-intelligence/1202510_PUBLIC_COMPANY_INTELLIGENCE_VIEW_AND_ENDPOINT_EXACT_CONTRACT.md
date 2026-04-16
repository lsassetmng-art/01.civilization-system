# ============================================================
# PUBLIC COMPANY INTELLIGENCE VIEW AND ENDPOINT EXACT CONTRACT
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

read_views:
- v_company_profile_read_projection
- v_company_officer_profile_read_projection
- v_public_company_intelligence_freshness
- v_public_company_intelligence_batch_status

view_contracts:
- company profile view exposes only active or governed-visible states
- officer profile view is keyed by company_public_profile_id and normalized_officer_key
- freshness view exposes freshness_at, warning_count, stale_flag
- batch status view exposes batch job state, counts, and timestamps

endpoint_contracts:
- GET company-profile accepts query or corporate_number or normalized_company_key
- GET officer-profile accepts company_public_profile_id with officer_name or normalized_officer_key
- POST normalize/company-candidate is assistive and non-publishing
- POST review/decision is governed and auditable

response_contract_rules:
- all successful reads return confidence_score when available
- all ambiguous outcomes return reasoned error codes
- include_sources and include_officers are explicit opt-in query flags
- source trace fields never expose secrets or fetch credentials
