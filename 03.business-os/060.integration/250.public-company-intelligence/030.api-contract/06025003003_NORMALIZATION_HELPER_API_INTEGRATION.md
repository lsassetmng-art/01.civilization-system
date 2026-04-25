# ============================================================
# NORMALIZATION HELPER API INTEGRATION
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
- approved assistive consumers

integration_direction:
- helper API for matching without final publish

contracts:
- POST normalize/company-candidate

integration_rules:
- recommended_action is explicit
- safe_review_mode may force review_required
- consumer cannot force active publish

error_surface:
- invalid_payload
- merge_prohibited
- source_projection_unavailable
