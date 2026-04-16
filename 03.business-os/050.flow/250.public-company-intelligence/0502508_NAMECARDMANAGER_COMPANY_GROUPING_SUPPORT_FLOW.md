# ============================================================
# NAMECARDMANAGER COMPANY GROUPING SUPPORT FLOW
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
- NameCardManager requests grouping assistance

preconditions:
- consumer has lookup permission

steps:
- submit observed company fragments
- call normalization helper
- receive matched profile or review recommendation
- store local reference in consumer domain

outputs:
- grouping recommendation
- confidence and warnings
- optional review request

failure_path:
- ambiguous match returns assist-only response
- consumer cannot publish final profile

idempotency_rule:
- same observed fragments may reuse cached assist result but canonical truth stays central
