# ============================================================
# RAW INGESTION FLOW
# ============================================================

status: canonical
system: business-os
layer: flow
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

trigger:
- source task starts fetch

preconditions:
- source is enabled
- credential posture is valid if needed

steps:
- fetch raw payload
- persist retrieval metadata
- persist raw checksum and payload ref
- record source URL
- mark parse_state raw_only

outputs:
- raw snapshot row
- audit trail
- fetch status update

failure_path:
- timeout and auth failure are logged with source failure reason
- no profile mutation occurs on raw fetch failure

idempotency_rule:
- same checksum within same run may be de-duplicated but attempt log remains
