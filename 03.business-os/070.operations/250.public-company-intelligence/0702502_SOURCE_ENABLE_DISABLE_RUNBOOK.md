# ============================================================
# SOURCE ENABLE DISABLE RUNBOOK
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
- safely enable or disable governed sources

signals:
- source registry changes
- skipped_source_disabled counts
- unexpected fetch attempts

actions:
- validate source class
- record enable or disable decision
- announce next batch impact
- verify skipped status behavior

guardrails:
- prohibited source class may never be enabled
- disable never deletes history

retention_and_trace:
- source registry audit retained minimum 365 days
