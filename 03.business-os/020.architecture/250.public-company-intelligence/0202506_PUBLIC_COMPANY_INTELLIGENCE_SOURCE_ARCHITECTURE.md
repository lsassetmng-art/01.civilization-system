# ============================================================
# PUBLIC COMPANY INTELLIGENCE SOURCE ARCHITECTURE
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
- Define governed source classes and source control responsibilities.

owns:
- source registry
- source enable and disable
- source priority
- source provenance

does_not_own:
- unapproved scraping
- anonymous source promotion
- AI summary as source truth

inputs:
- registry maintenance
- fetch credentials
- source version changes

outputs:
- source execution plan
- source-scoped audit
- allowed source class enforcement

failure_and_guardrails:
- disabled sources create skipped status
- source class drift is reviewed
- prohibited sources are blocked before merge

authoritative_rule:
- If any older draft conflicts with this file, this file wins.
- This file inherits domain-wide exact decisions from the supplement.
