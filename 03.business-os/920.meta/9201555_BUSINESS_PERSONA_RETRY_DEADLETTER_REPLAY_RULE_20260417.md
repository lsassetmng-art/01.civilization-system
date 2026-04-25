# ============================================================
# BUSINESS PERSONA RETRY DEADLETTER REPLAY RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix retry, dead-letter, and replay behavior for Business-origin persona commercial events.

retry_rule:
- retry is allowed only for retryable transport or consumer failures
- retries must preserve event_id, idempotency_key, payload_version, and authoritative payload meaning
- retries must increment retry_count without rewriting business truth identity

dead_letter_rule:
- repeated retryable failure may move an outbox item to dead_lettered
- terminal rejection may move directly to dead_lettered depending on policy
- dead-letter state must preserve original event payload and traceability

replay_rule:
- replay must originate from preserved Business truth-origin event material
- replay must not fabricate a new authoritative business event unless it is an explicit new business action
- replay for delivery recovery should preserve original event identity where semantics are unchanged

consumer_consistency_rule:
- PersonaOS must remain idempotent under retry and replay scenarios
- downstream mirror / apply-ready state must converge to Business truth

result:
- Retry, dead-letter, and replay rule fixed as a canonical meta record.
