# ============================================================
# COMPANY PUBLIC PROFILE MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: company_public_profile
primary_key: company_public_profile_id

truth_boundary:
- final canonical company public read truth

write_authority:
- governed publish path and reviewer override

major_states:
- draft|active|needs_review|superseded|source_disabled_hold|retired

relations:
- public_profile_source_link via company_public_profile_id
- company_officer_profile via company_public_profile_id

fields:
- normalized_company_key text unique
- canonical_company_name text
- corporate_number text nullable
- listed_status enum listed|unlisted|unknown
- market_name text nullable
- website_url text nullable
- ir_url text nullable
- phone_number text nullable
- postal_address text nullable
- representative_name text nullable
- confidence_score numeric
- freshness_at timestamptz
- profile_state enum draft|active|needs_review|superseded|source_disabled_hold|retired

model_rules:
- stronger-source winner value is published
- weaker conflicting values stay as evidence
