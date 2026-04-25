# ============================================================
# FRESHNESS AND REFRESH OPERATIONS
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
- keep active profiles within target freshness windows

signals:
- freshness_at lag
- source refresh lag
- stale profile counts

actions:
- refresh high-priority official sources within 24h
- refresh trusted directories within 7d
- stagger low-priority companies

guardrails:
- freshness exceptions must be visible in warnings
- stale data is not hidden

retention_and_trace:
- freshness metrics retained minimum 180 days
