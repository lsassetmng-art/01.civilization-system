# ============================================================
# PUBLIC COMPANY INTELLIGENCE IMPLEMENTATION ROADMAP
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
- Implement the domain in fixed order from source registry through consumer integrations.

deliverables:
- source registry and batch skeleton
- raw snapshot storage
- candidate generation
- confidence and reason engine
- review queue
- profile publish path
- read projections
- consumer integrations
- ops hardening

hard_rules:
- do not start consumer write paths before audit and review exist
- projection build follows authoritative storage

acceptance:
- done means active profile publish, read API, review queue, audit, and rerun posture are all available

## 2026-04-16 canonical rewrite
- public-company-intelligence implementation canonical rewrite batch completed
