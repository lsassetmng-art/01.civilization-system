# ============================================================
# REVIEW QUEUE IMPLEMENTATION NOTE
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
- Define queue behavior and reviewer controls.

deliverables:
- queue create
- claim
- decision
- escalation
- publish_mode active or hold
- audit

hard_rules:
- review actions require governed capability
- rejected items remain queryable for audit

acceptance:
- done means every review-required candidate can be resolved without out-of-band mutation
