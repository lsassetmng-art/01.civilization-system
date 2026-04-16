# ============================================================
# NORMALIZATION AND MATCH POLICY
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
- rules for building normalized keys and deciding matches

allowed:
- corporate-number-first company keying
- domain-assisted fallback
- stable company anchor for officer keying

forbidden:
- name-only final merge when identifier and domain are absent
- cross-company officer merge without strong evidence

review_requirements:
- near matches without identifier support require review
- representative changes require review

audit_requirements:
- match reasoning and reason codes are always auditable
