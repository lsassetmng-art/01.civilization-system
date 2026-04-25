# ============================================================
# PROFILE PUBLICATION IMPLEMENTATION NOTE
# ============================================================

status: canonical
system: business-os
layer: implementation
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
db_reviewer_required:
- 佐藤（DB担当）
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

purpose:
- Define exact publish behavior for company and officer profiles.

deliverables:
- winner field publish
- source link creation
- projection refresh
- warnings update
- supersede old active rows when needed

hard_rules:
- publish only from auto_merge_ready or approved review
- weaker conflicts stay as evidence and warnings

acceptance:
- done means active profile read is reproducible from authoritative storage
