# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: architecture
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
- 0202501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0202502_PUBLIC_COMPANY_INTELLIGENCE_ARCHITECTURE.md
- 0202503_PUBLIC_COMPANY_INTELLIGENCE_BOUNDARY_ARCHITECTURE.md
- 0202504_PUBLIC_COMPANY_INTELLIGENCE_BATCH_ARCHITECTURE.md
- 0202505_PUBLIC_COMPANY_INTELLIGENCE_CONSUMER_ARCHITECTURE.md
- 0202506_PUBLIC_COMPANY_INTELLIGENCE_SOURCE_ARCHITECTURE.md
- 0202507_PUBLIC_COMPANY_INTELLIGENCE_REVIEW_ARCHITECTURE.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
