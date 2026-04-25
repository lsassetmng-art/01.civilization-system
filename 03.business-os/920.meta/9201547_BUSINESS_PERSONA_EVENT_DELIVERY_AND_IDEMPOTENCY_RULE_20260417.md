# ============================================================
# BUSINESS PERSONA EVENT DELIVERY AND IDEMPOTENCY RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix delivery, retry, deduplication, and consumer idempotency behavior for Business-origin persona commercial events.

delivery_rule:
- BusinessOS is the only authoritative producer for this event family
- PersonaOS is a downstream consumer
- event delivery must tolerate retries and duplicate delivery attempts

idempotency_rule:
- idempotency_key is mandatory
- PersonaOS consumer must treat the same idempotency_key as the same business-origin effect
- duplicate delivery must not duplicate mirror/apply-ready rights

retry_rule:
- transient consumer failures may trigger redelivery
- redelivery must preserve event_id and idempotency_key
- producer retries must not mutate authoritative meaning of a previously emitted event

ordering_rule:
- per subject_id ordering should be preserved where practical
- if out-of-order delivery occurs, consumer must converge using Business truth precedence

rebuild_rule:
- downstream state must be reconstructible from authoritative Business truth plus retained business-origin events or snapshots

result:
- Delivery and idempotency rule fixed as a canonical meta record.
