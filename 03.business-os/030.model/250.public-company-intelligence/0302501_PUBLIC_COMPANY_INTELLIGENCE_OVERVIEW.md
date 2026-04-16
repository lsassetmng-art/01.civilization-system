# ============================================================
# PUBLIC COMPANY INTELLIGENCE OVERVIEW
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
document_type: overview
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

scope:
- Source registry model
- raw evidence snapshot models
- published company and officer profile models
- normalization candidate models
- review queue model
- batch and audit models
- state enum authority

fixed_in_this_layer:
- Primary keys and unique keys
- truth boundaries per object
- write authority by governed actor
- state model consistency
- source-link traceability

completion_state:
- Model layer is fixed enough for DDL design and endpoint implementation preparation

next_expected_use:
- Read this layer before DDL or view design to avoid field drift

authority_rule:
- This overview is descriptive and authoritative for navigation and layer intent.
- Exact contracts still follow the canonical body files and the domain supplement.
