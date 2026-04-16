# ============================================================
# NAMECARDMANAGER INTEGRATION
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
- NameCardManager

integration_direction:
- consumer read and helper request into Public Company Intelligence

contracts:
- GET company-profile
- GET officer-profile
- POST normalize/company-candidate

integration_rules:
- read-mostly integration
- consumer stores local interpretation separately
- canonical truth stays central

error_surface:
- ambiguous_company_match
- ambiguous_officer_match
- invalid_query
