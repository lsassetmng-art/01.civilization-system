# ============================================================
# COMPANY OFFICER PROFILE MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: company_officer_profile
primary_key: company_officer_profile_id

truth_boundary:
- final canonical public officer business-context truth

write_authority:
- governed publish path and reviewer override

major_states:
- draft|active|needs_review|superseded|retired

relations:
- company_public_profile via company_public_profile_id
- public_profile_source_link via company_officer_profile_id

fields:
- company_public_profile_id uuid fk
- normalized_officer_key text unique
- canonical_officer_name text
- canonical_title text
- title_family text
- representative_flag boolean
- confidence_score numeric
- freshness_at timestamptz
- profile_state enum draft|active|needs_review|superseded|retired

model_rules:
- officer linkage cannot publish final key when company linkage is unstable
