# ============================================================
# BUSINESS PERSONA DOWNSTREAM CONSUMER OBLIGATIONS
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the minimum obligations expected from PersonaOS as downstream consumer.

consumer_obligations:
- consume Business-origin events idempotently
- preserve deduplication behavior using event_id or idempotency_key
- maintain mirror / derived / apply-ready state only
- converge local projection to Business truth on conflict
- support replay and reconciliation without inventing new commercial truth
- preserve operator-visible traceability for duplicate, retry, dead-letter, and replay outcomes

must_not_do:
- overwrite Business commercial truth
- reinterpret tentative local state as authoritative trade truth
- emit ERP-facing commercial authority as Persona-origin

result:
- Downstream consumer obligations fixed as a canonical meta record.
