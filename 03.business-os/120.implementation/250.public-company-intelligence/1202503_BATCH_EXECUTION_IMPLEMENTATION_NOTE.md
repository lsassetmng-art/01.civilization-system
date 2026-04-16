# ============================================================
# BATCH EXECUTION IMPLEMENTATION NOTE
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
- Define exact implementation expectations for batch planning and execution.

deliverables:
- nightly planner
- adhoc rerun
- source-scoped rerun
- projection-only replay
- job log detail

hard_rules:
- each run freezes source basis
- partial_success is terminal and inspectable
- disabled sources record skipped state

acceptance:
- done means failed and partial runs are observable and rerunnable without history loss
