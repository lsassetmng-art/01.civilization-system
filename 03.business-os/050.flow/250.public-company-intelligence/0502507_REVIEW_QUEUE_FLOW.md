# ============================================================
# REVIEW QUEUE FLOW
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
- review-required candidate exists

preconditions:
- candidate reason codes are present

steps:
- create queue item
- assign priority
- reviewer claims or reviews
- approve reject or escalate
- record audit and refresh projections if approved

outputs:
- queue state
- review decision
- audit trail

failure_path:
- queue stall older than threshold triggers alert
- rejected candidate remains auditable

idempotency_rule:
- same queue id cannot be approved twice
