# ============================================================
# PARSE AND NORMALIZATION FLOW
# ============================================================

status: canonical
system: business-os
layer: flow
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

trigger:
- raw snapshot becomes available

preconditions:
- raw snapshot exists

steps:
- parse raw payload into structured fields
- build company or officer candidate
- score confidence
- compute reason codes
- choose auto_merge_ready or review_required

outputs:
- normalization candidate
- reason codes
- parse result

failure_path:
- parser breakage preserves raw evidence and creates failure reason
- candidate is not published

idempotency_rule:
- re-parse of same snapshot replaces candidate only within same governed replay context
