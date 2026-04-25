# ============================================================
# PUBLIC COMPANY INTELLIGENCE INDEX AND VIEW SQL DRAFT NON EXECUTION
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

note:
- This file freezes non-executable index and view intent only.

index_outline:
```sql
create index idx_company_public_profile_state_freshness
  on business.company_public_profile (profile_state, freshness_at desc);

create index idx_review_queue_state_priority
  on business.public_data_review_queue (queue_state, priority);

create index idx_company_batch_job_log_job_created
  on business.company_batch_job_log (company_batch_job_id, created_at desc);
```

view_outline:
```sql
create view business.v_company_profile_read_projection as
select ...
from business.company_public_profile
where profile_state = 'active';

create view business.v_public_company_intelligence_freshness as
select ...;
```

rule:
- view definitions must be rebuildable from authoritative tables and must not become hidden source-of-truth tables

## 2026-04-16 canonical rewrite
- public-company-intelligence implementation canonical rewrite batch completed
