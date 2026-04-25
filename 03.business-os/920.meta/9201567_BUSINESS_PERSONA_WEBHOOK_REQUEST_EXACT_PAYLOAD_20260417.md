# ============================================================
# BUSINESS PERSONA WEBHOOK REQUEST EXACT PAYLOAD
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact webhook request payload shape from BusinessOS to PersonaOS.

request_headers:
- X-Business-Event-Id
- X-Business-Event-Type
- X-Business-Payload-Version
- X-Business-Idempotency-Key
- X-Business-Producer-Trace-Id

request_body_top_level_fields:
- envelope
- payload

envelope_required_fields:
- event_id
- event_type
- source_system = BusinessOS
- payload_version
- occurred_at
- idempotency_key
- producer_trace_id
- subject_type
- subject_id
- user_id when applicable
- persona_id when applicable

payload_required_rule:
- payload must follow the exact event contract defined by the event family
- payload must be sufficient for downstream mirror/apply-ready projection without guessing commercial truth

transport_rule:
- webhook request is a transport surface for Business truth-origin events
- transport must not mutate authoritative meaning of the event

result:
- Webhook request exact payload fixed as a canonical meta record.
