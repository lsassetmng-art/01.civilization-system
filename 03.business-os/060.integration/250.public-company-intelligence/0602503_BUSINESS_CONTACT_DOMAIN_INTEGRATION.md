# ============================================================
# BUSINESS CONTACT DOMAIN INTEGRATION
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
- business contact domain

integration_direction:
- consumer read of canonical company and officer profiles

contracts:
- GET company-profile
- GET officer-profile

integration_rules:
- local contact notes never overwrite public profile
- consumer may keep app-local aliases separately

error_surface:
- company_not_found
- source_projection_unavailable
