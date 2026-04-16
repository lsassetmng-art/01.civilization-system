# ============================================================
# PUBLIC SOURCE REGISTRY MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: public_source_registry
primary_key: public_source_registry_id

truth_boundary:
- source registry is authoritative for allowed fetch sources

write_authority:
- platform ops and governed source admins

major_states:
- enabled|disabled

relations:
- company_public_source_snapshot via source_id
- officer_public_source_snapshot via source_id

fields:
- source_code text unique
- source_type enum official_registry|official_site|official_ir|official_exchange|government_notice|trusted_directory
- display_name text
- enabled boolean
- priority integer
- auth_mode enum none|api_key|cookie|manual
- refresh_target_hours integer
- created_at timestamptz
- updated_at timestamptz

model_rules:
- source priority is explicit
- prohibited source classes must never be enabled
