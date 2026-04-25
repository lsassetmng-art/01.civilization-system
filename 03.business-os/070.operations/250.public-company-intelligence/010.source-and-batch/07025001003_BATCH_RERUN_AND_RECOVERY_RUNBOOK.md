# ============================================================
# BATCH RERUN AND RECOVERY RUNBOOK
# ============================================================

status: canonical
system: business-os
layer: operations
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

goal:
- recover from source or projection failures without corrupting authority

signals:
- failed batches
- partial_success batches
- projection refresh failures

actions:
- choose source-scoped or batch-scoped rerun
- preserve old logs
- rerun with new batch id
- replay projection when refetch is unnecessary

guardrails:
- rerun never edits old logs
- authoritative storage must exist before projection replay

retention_and_trace:
- batch logs retained minimum 180 days
