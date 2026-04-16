# ============================================================
# REVIEW REQUIRED POLICY
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
- conditions that force governed review

allowed:
- confidence below 0.92
- strong-source conflict
- representative change
- domain conflict
- consumer safe review mode

forbidden:
- silent auto-publish under ambiguity
- consumer self-approval

review_requirements:
- reviewer may approve reject or escalate with reason code and note

audit_requirements:
- review decisions create change audit
