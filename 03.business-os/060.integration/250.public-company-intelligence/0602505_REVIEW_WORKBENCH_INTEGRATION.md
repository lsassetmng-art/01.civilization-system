# ============================================================
# REVIEW WORKBENCH INTEGRATION
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
- review workbench

integration_direction:
- governed review mutation path

contracts:
- POST review/decision
- GET company-profile
- GET officer-profile

integration_rules:
- reviewer capability required
- every decision produces audit
- hold mode is supported

error_surface:
- unauthorized
- review_queue_not_found
- invalid_decision
