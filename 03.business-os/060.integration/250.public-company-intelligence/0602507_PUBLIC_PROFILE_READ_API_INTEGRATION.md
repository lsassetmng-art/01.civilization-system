# ============================================================
# PUBLIC PROFILE READ API INTEGRATION
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
- all approved consumers

integration_direction:
- central read API contract

contracts:
- GET company-profile
- GET officer-profile

integration_rules:
- include_sources and include_officers are explicit flags
- warnings and confidence are always returned when available

error_surface:
- invalid_query
- profile_unavailable
