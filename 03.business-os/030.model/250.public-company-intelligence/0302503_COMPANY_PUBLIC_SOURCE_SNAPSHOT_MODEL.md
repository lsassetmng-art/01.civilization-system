# ============================================================
# COMPANY PUBLIC SOURCE SNAPSHOT MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: company_public_source_snapshot
primary_key: company_public_source_snapshot_id

truth_boundary:
- raw company evidence is authoritative before parsing

write_authority:
- governed fetch pipeline

major_states:
- fetched|partial|failed

relations:
- public_source_registry via source_id
- company_public_profile via source-link projection

fields:
- source_id uuid fk
- fetch_basis_version text
- source_url text
- retrieved_at timestamptz
- raw_checksum text
- raw_payload_ref text
- parse_state enum raw_only|parsed|partial_parse|parse_failed
- company_hint text
- status enum fetched|partial|failed

model_rules:
- raw evidence must be kept separate from final profile truth
- failed fetch still logs attempt metadata
