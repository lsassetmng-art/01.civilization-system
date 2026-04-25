# ============================================================
# PUBLICATION PREFLIGHT SUPPORT FLOW
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
- ERP or publication preflight requests identity verification support

preconditions:
- subject company input is present

steps:
- lookup profile by corporate number or assist query
- return canonical identity hints and warnings
- return unresolved status when ambiguity exists

outputs:
- preflight support result
- identity confidence
- warning set

failure_path:
- domain never replaces ERP legal master approval
- ambiguity stays unresolved until review

idempotency_rule:
- same verified identity input should return same result for same active profile snapshot
