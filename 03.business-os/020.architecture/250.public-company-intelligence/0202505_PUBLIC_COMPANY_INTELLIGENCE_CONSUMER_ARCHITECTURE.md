# ============================================================
# PUBLIC COMPANY INTELLIGENCE CONSUMER ARCHITECTURE
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
- Describe how consumer apps read and request assistive support.

owns:
- company profile lookup
- officer profile lookup
- normalization helper
- safe review request

does_not_own:
- direct final-profile overwrite
- private cache as system truth
- unguarded reviewer action

inputs:
- consumer lookup calls
- assist mode normalization requests

outputs:
- consumer-safe read APIs
- warnings
- reason codes
- confidence-aware suggestions

failure_and_guardrails:
- consumers are read-mostly
- mutations require governed capability
- local interpretation cannot outrank canonical profile

authoritative_rule:
- If any older draft conflicts with this file, this file wins.
- This file inherits domain-wide exact decisions from the supplement.
