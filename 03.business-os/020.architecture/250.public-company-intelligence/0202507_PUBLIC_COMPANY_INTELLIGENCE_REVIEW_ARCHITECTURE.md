# ============================================================
# PUBLIC COMPANY INTELLIGENCE REVIEW ARCHITECTURE
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
- Define the human-governed review path for ambiguous or risky candidates.

owns:
- review queue
- reason codes
- review decisions
- escalation and audit

does_not_own:
- silent auto-publish under ambiguity
- consumer self-approval
- history deletion

inputs:
- review-required candidates
- reviewer decisions
- escalation requests

outputs:
- approved and rejected outcomes
- audit records
- projection refresh requests

failure_and_guardrails:
- every override needs reason code
- rejected candidates remain auditable
- active publish occurs only after governed decision

authoritative_rule:
- If any older draft conflicts with this file, this file wins.
- This file inherits domain-wide exact decisions from the supplement.
