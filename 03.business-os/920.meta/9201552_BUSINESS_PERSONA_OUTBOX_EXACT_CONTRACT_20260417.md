# ============================================================
# BUSINESS PERSONA OUTBOX EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact outbox structure for Business-origin persona commercial events.

outbox_record_fields:
- outbox_id: string, required
- event_id: string, required
- event_type: enum, required
- source_system = BusinessOS
- payload_version: string, required
- idempotency_key: string, required
- producer_trace_id: string, required
- subject_type: enum, required
- subject_id: string, required
- tenant_scope when applicable
- payload_json: object, required
- enqueue_status: enum, required
- created_at: RFC3339 datetime, required
- next_attempt_at: RFC3339 datetime, optional
- last_attempt_at: RFC3339 datetime, optional
- delivered_at: RFC3339 datetime, optional
- dead_lettered_at: RFC3339 datetime, optional
- retry_count: integer, required

enqueue_status_enum:
- pending
- delivering
- delivered
- failed_retryable
- dead_lettered

outbox_rule:
- BusinessOS writes authoritative persona commercial events to outbox first
- transport delivery works from outbox, not from ad hoc direct mutation
- outbox record must preserve Business truth-origin identity and replayability

result:
- Business Persona outbox exact contract fixed as a canonical meta record.
