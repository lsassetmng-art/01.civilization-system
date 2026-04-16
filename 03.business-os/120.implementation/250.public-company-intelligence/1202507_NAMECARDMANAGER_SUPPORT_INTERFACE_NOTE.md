# ============================================================
# NAMECARDMANAGER SUPPORT INTERFACE NOTE
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
- Define the support interface posture for NameCardManager.

deliverables:
- assist lookup
- company grouping support
- migration enrichment
- warning propagation

hard_rules:
- NameCardManager is read-mostly and cannot bypass governed review

acceptance:
- done means grouping and migration can consume canonical support safely
