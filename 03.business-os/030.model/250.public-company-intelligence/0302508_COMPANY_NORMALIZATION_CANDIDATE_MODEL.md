# ============================================================
# COMPANY NORMALIZATION CANDIDATE MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: company_normalization_candidate
primary_key: company_normalization_candidate_id

truth_boundary:
- staged normalization candidate before merge

write_authority:
- normalization pipeline and reviewer

major_states:
- candidate_built|review_required|auto_merge_ready|merged|rejected

relations:
- company_public_profile via matched_profile_id
- public_data_review_queue via candidate_id

fields:
- observed_company_name text
- observed_identifier text nullable
- observed_domain text nullable
- observed_phone_number text nullable
- observed_postal_address text nullable
- normalized_company_key_candidate text
- confidence_score numeric
- recommended_action enum auto_merge_ready|review_required|prohibited
- reason_codes text array
- matched_profile_id uuid nullable fk
- state enum candidate_built|review_required|auto_merge_ready|merged|rejected

model_rules:
- candidate never silently overwrites final profile without governed path
