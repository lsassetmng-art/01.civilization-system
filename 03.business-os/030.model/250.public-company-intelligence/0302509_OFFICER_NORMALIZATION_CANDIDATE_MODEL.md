# ============================================================
# OFFICER NORMALIZATION CANDIDATE MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: officer_normalization_candidate
primary_key: officer_normalization_candidate_id

truth_boundary:
- staged officer candidate before merge

write_authority:
- normalization pipeline and reviewer

major_states:
- candidate_built|review_required|auto_merge_ready|merged|rejected

relations:
- company_officer_profile via matched_profile_id
- public_data_review_queue via candidate_id

fields:
- company_public_profile_id uuid nullable fk
- observed_officer_name text
- observed_title text nullable
- normalized_officer_key_candidate text nullable
- confidence_score numeric
- reason_codes text array
- matched_profile_id uuid nullable fk
- state enum candidate_built|review_required|auto_merge_ready|merged|rejected

model_rules:
- cross-company ambiguity forces review
- final key cannot publish without stable company anchor
