# ============================================================
# NAMECARDMANAGER CONSUMER POLICY
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
- specific consumer rules for NameCardManager

allowed:
- lookup canonical company or officer profile
- request helper normalization
- store local alias separately

forbidden:
- direct overwrite of final public profile
- use local cache as upstream truth

review_requirements:
- manual review may be requested through governed path when ambiguity matters

audit_requirements:
- consumer requests and resulting decisions remain traceable through audit or logs
