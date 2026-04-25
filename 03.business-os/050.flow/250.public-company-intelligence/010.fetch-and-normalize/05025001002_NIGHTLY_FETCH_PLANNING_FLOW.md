# ============================================================
# NIGHTLY FETCH PLANNING FLOW
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
- scheduled nightly planner

preconditions:
- enabled sources exist
- priority company set can be resolved

steps:
- enumerate enabled sources
- freeze source basis version
- create company_batch_job in planned
- create source task plan
- mark disabled sources as skipped_source_disabled

outputs:
- planned batch job
- task plan
- source coverage report

failure_path:
- missing source registry blocks run
- partial source plan still allowed if audit exists

idempotency_rule:
- same source basis and run key must not create duplicate active batch
