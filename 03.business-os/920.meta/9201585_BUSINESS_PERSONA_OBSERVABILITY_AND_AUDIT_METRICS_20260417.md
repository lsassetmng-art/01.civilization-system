# ============================================================
# BUSINESS PERSONA OBSERVABILITY AND AUDIT METRICS
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the minimum observability and audit metrics expectations for transport operations.

minimum_metrics:
- outbox backlog count
- retryable failure count
- dead-letter count
- replay request count
- replay success/failure count
- reconciliation request count
- consumer duplicate_ignored count
- consumer accepted count
- consumer rejected_retryable count
- consumer rejected_terminal count

minimum_audit_views:
- event trace by event_id
- event trace by idempotency_key
- dead-letter inspection view
- replay request to execution trace
- reconciliation request to completion trace

rule:
- observability must preserve Business truth traceability
- operator metrics must help distinguish delivery recovery from new business action

result:
- Observability and audit metrics expectations fixed as a canonical meta record.
