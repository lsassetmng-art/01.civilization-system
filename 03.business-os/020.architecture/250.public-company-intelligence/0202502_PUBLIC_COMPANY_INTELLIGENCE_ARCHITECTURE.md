# ============================================================
# PUBLIC COMPANY INTELLIGENCE ARCHITECTURE
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
- Define the domain as a read-support public-company knowledge service for BusinessOS.

owns:
- source registry
- raw source snapshots
- normalized company and officer profiles
- review queue and audit trail

does_not_own:
- ERP legal truth
- private CRM truth
- HR employee truth
- silent consumer overwrite

inputs:
- governed fetch jobs
- governed reviewer decisions
- consumer lookup requests

outputs:
- company and officer read models
- normalization recommendations
- review tasks
- audit events

failure_and_guardrails:
- raw evidence must be preserved
- strong-source conflicts must enter review
- consumer read failure must not destroy authority

authoritative_rule:
- If any older draft conflicts with this file, this file wins.
- This file inherits domain-wide exact decisions from the supplement.
