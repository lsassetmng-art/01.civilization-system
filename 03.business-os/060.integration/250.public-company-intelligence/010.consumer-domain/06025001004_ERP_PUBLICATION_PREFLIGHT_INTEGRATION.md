# ============================================================
# ERP PUBLICATION PREFLIGHT INTEGRATION
# ============================================================

status: canonical
system: business-os
layer: integration
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

consumer_or_peer:
- ERP publication preflight

integration_direction:
- assistive verification read path

contracts:
- GET company-profile
- optional normalize/company-candidate

integration_rules:
- assistive only and not legal replacement
- returned warnings must stay visible to ERP operator

error_surface:
- ambiguous_company_match
- company_not_found
