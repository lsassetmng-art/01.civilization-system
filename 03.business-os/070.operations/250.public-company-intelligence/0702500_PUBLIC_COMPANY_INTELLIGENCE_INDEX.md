# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX
# ============================================================

status: canonical
system: business-os
layer: operations
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
- 0702501_PUBLIC_COMPANY_INTELLIGENCE_OVERVIEW.md
- 0702502_SOURCE_ENABLE_DISABLE_RUNBOOK.md
- 0702503_BATCH_RERUN_AND_RECOVERY_RUNBOOK.md
- 0702504_REVIEW_QUEUE_OPERATIONS.md
- 0702505_FRESHNESS_AND_REFRESH_OPERATIONS.md
- 0702506_AUDIT_AND_LOG_RETENTION_OPERATIONS.md
- 0702507_INCIDENT_AND_SOURCE_FAILURE_OPERATIONS.md

authority_rule:
- If any older draft index or overview conflicts with this index, this file wins.
- Layer-local navigation follows this canonical index.
- Domain-wide exact decisions still inherit from the authoritative supplement.

result:
- This layer index is implementation-ready in design terms.
