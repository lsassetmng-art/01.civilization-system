# ============================================================
# PUBLIC PRIVATE BOUNDARY POLICY
# ============================================================

status: canonical
system: business-os
layer: policy
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

policy_scope:
- boundary between public-company intelligence and private data

allowed:
- public business-context company and officer evidence only

forbidden:
- private personal data
- employee private data
- consumer-local secret notes

review_requirements:
- boundary exceptions are not allowed in this domain and require different domain design

audit_requirements:
- boundary violations must be audited and blocked
