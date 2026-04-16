# ============================================================
# PUBLIC COMPANY INTELLIGENCE OVERVIEW
# ============================================================

status: canonical
system: business-os
layer: flow
domain: public-company-intelligence
document_type: overview
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

scope:
- Nightly fetch planning
- raw ingestion
- parse and normalization
- match and merge
- projection refresh
- review queue
- NameCardManager assist flows
- publication preflight assist flow

fixed_in_this_layer:
- Trigger and precondition posture
- idempotency rules
- review routing
- non-destructive recovery
- consumer assist behavior

completion_state:
- Flow layer is fixed for runtime implementation and test scenario design

next_expected_use:
- Use this layer to sequence jobs, retries, approvals, and consumer assistance

authority_rule:
- This overview is descriptive and authoritative for navigation and layer intent.
- Exact contracts still follow the canonical body files and the domain supplement.
