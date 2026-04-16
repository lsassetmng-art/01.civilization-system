# ============================================================
# PUBLICATION REFRESH FLOW
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
- profile mutation or approved review completes

preconditions:
- authoritative storage is intact

steps:
- rebuild company read projection
- rebuild officer read projection
- rebuild warnings and freshness
- publish updated projection timestamp

outputs:
- fresh read model
- freshness marker
- warnings projection

failure_path:
- projection failure does not roll back authoritative storage
- replay is allowed without refetch

idempotency_rule:
- projection rebuild is replace-safe by profile id and freshness key
