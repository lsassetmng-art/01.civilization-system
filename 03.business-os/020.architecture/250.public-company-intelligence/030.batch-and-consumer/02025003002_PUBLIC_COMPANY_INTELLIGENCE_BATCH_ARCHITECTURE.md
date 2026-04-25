# ============================================================
# PUBLIC COMPANY INTELLIGENCE BATCH ARCHITECTURE
# ============================================================

status: canonical
system: business-os
layer: architecture
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

purpose:
- Define the nightly and ad hoc batch execution topology.

owns:
- batch plan
- source execution
- parse pipeline
- projection refresh

does_not_own:
- manual spreadsheet-only operation
- consumer-side batch orchestration
- silent refetch overwrite

inputs:
- enabled sources
- priority company sets
- rerun requests

outputs:
- company_batch_job
- company_batch_job_log
- fresh projections
- failure alerts

failure_and_guardrails:
- partial success must remain inspectable
- rerun preserves prior logs
- projection replay may occur without refetch

authoritative_rule:
- If any older draft conflicts with this file, this file wins.
- This file inherits domain-wide exact decisions from the supplement.
