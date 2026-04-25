# ============================================================
# NORMALIZATION DICTIONARY IMPLEMENTATION NOTE
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
- Define the normalization dictionary and title family mapping expectations.

deliverables:
- company legal suffix normalization
- width and punctuation normalization
- domain normalization
- title family mapping

hard_rules:
- dictionary changes are versioned and auditable
- dictionary update does not silently republish old profiles without replay

acceptance:
- done means normalized keys are deterministic and replayable
