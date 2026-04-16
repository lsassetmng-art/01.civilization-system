# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
document_type: index
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

purpose:
- Provide the authoritative file index for this layer of Public Company Intelligence.
- Make the canonical file set visible without relying on draft notes.
- Ensure implementers can navigate the domain in fixed order.

canonical_files:
- 0302501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0302502_PUBLIC_SOURCE_REGISTRY_MODEL.md
- 0302503_COMPANY_PUBLIC_SOURCE_SNAPSHOT_MODEL.md
- 0302504_OFFICER_PUBLIC_SOURCE_SNAPSHOT_MODEL.md
- 0302505_COMPANY_PUBLIC_PROFILE_MODEL.md
- 0302506_COMPANY_OFFICER_PROFILE_MODEL.md
- 0302507_PUBLIC_PROFILE_SOURCE_LINK_MODEL.md
- 0302508_COMPANY_NORMALIZATION_CANDIDATE_MODEL.md
- 0302509_OFFICER_NORMALIZATION_CANDIDATE_MODEL.md
- 0302510_PUBLIC_DATA_REVIEW_QUEUE_MODEL.md
- 0302511_COMPANY_BATCH_JOB_MODEL.md
- 0302512_PUBLIC_DATA_CHANGE_AUDIT_MODEL.md
- 0302513_PUBLIC_COMPANY_INTELLIGENCE_STATE_ENUM_MODEL.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
