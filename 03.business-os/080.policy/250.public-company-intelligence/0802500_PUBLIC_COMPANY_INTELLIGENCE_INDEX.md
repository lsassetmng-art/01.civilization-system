# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: policy
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
- 0802501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0802502_PUBLIC_SOURCE_USAGE_POLICY.md
- 0802503_PUBLIC_PRIVATE_BOUNDARY_POLICY.md
- 0802504_NORMALIZATION_AND_MATCH_POLICY.md
- 0802505_REVIEW_REQUIRED_POLICY.md
- 0802506_FRESHNESS_AND_ATTRIBUTION_POLICY.md
- 0802507_NAMECARDMANAGER_CONSUMER_POLICY.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
