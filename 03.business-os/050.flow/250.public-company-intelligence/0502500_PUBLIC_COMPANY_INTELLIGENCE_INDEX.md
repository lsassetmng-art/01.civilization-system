# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: flow
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
- 0502501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0502502_NIGHTLY_FETCH_PLANNING_FLOW.md
- 0502503_RAW_INGESTION_FLOW.md
- 0502504_PARSE_AND_NORMALIZATION_FLOW.md
- 0502505_MATCH_AND_MERGE_FLOW.md
- 0502506_PUBLICATION_REFRESH_FLOW.md
- 0502507_REVIEW_QUEUE_FLOW.md
- 0502508_NAMECARDMANAGER_COMPANY_GROUPING_SUPPORT_FLOW.md
- 0502509_NAMECARDMANAGER_MIGRATION_ENRICHMENT_FLOW.md
- 0502510_PUBLICATION_PREFLIGHT_SUPPORT_FLOW.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
