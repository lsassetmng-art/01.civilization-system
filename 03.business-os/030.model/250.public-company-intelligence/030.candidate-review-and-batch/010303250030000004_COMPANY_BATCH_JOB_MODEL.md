# ============================================================
# COMPANY BATCH JOB MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: company_batch_job
primary_key: company_batch_job_id

truth_boundary:
- authoritative batch execution record

write_authority:
- batch orchestrator

major_states:
- planned|running|partial_success|succeeded|failed|cancelled

relations:
- company_batch_job_log via company_batch_job_id
- source registry via planned sources

fields:
- job_scope enum nightly|adhoc|source_rerun|projection_rebuild
- state enum planned|running|partial_success|succeeded|failed|cancelled
- planned_source_count integer
- completed_source_count integer
- failed_source_count integer
- started_at timestamptz nullable
- ended_at timestamptz nullable
- frozen_source_basis text

model_rules:
- partial success remains a first-class terminal state and must stay inspectable
