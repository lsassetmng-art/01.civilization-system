# ============================================================
# REVIEW QUEUE OPERATIONS
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
- keep review queue healthy and timely

signals:
- queue age
- priority backlog
- decision throughput

actions:
- triage high priority reasons first
- assign reviewer
- escalate stuck items
- refresh projections after approval

guardrails:
- queue items cannot be silently dropped
- every decision needs reviewer note when overriding conflict

retention_and_trace:
- review queue records retained minimum 365 days through audit references
