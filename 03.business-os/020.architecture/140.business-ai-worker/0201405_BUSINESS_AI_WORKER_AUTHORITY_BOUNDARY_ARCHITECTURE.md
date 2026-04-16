# ============================================================
# BUSINESS AI WORKER AUTHORITY BOUNDARY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: business-ai-worker
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Defines authority boundaries for AI employees.

ai_worker_can:
- assist
- propose
- summarize
- draft
- route
- recommend
- forecast
- prepare review material

ai_worker_cannot:
- become final legal approver by default
- impersonate human approval
- bypass explicit approval policy
- rewrite canonical master data without authorized path

rule:
Final approval authority remains human
unless a separately defined narrow automation policy explicitly allows otherwise.
