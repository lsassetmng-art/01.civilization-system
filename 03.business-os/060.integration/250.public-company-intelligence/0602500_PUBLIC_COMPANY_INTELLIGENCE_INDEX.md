# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: integration
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
- 0602501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0602502_NAMECARDMANAGER_INTEGRATION.md
- 0602503_BUSINESS_CONTACT_DOMAIN_INTEGRATION.md
- 0602504_ERP_PUBLICATION_PREFLIGHT_INTEGRATION.md
- 0602505_REVIEW_WORKBENCH_INTEGRATION.md
- 0602506_BATCH_JOB_MONITORING_INTEGRATION.md
- 0602507_PUBLIC_PROFILE_READ_API_INTEGRATION.md
- 0602508_NORMALIZATION_HELPER_API_INTEGRATION.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
