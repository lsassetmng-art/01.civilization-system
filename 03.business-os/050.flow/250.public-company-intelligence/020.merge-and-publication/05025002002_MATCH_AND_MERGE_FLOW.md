# ============================================================
# MATCH AND MERGE FLOW
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
- candidate reaches merge decision point

preconditions:
- candidate exists
- state is auto_merge_ready or reviewer approved

steps:
- resolve normalized company key
- resolve officer key only when company anchor is stable
- compare winner fields by source priority
- publish stronger values
- preserve weaker conflicts as evidence

outputs:
- updated active profile
- source links
- change audit

failure_path:
- merge_prohibited reason blocks publish
- cross-company ambiguity returns to review queue

idempotency_rule:
- same candidate id cannot produce duplicate profile mutation
