# ============================================================
# PUBLIC PROFILE SOURCE LINK MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: public_profile_source_link
primary_key: public_profile_source_link_id

truth_boundary:
- traceability between published profiles and source evidence

write_authority:
- governed publish path

major_states:
- active|historical

relations:
- company_public_profile via company_public_profile_id
- company_officer_profile via company_officer_profile_id
- snapshots via snapshot ids

fields:
- company_public_profile_id uuid nullable fk
- company_officer_profile_id uuid nullable fk
- source_id uuid fk
- company_snapshot_id uuid nullable fk
- officer_snapshot_id uuid nullable fk
- linked_fields text array
- winner_flag boolean
- created_at timestamptz

model_rules:
- every published winner field must be explainable through source links
