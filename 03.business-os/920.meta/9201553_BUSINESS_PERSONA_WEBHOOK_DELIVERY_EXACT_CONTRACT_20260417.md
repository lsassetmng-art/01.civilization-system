# ============================================================
# BUSINESS PERSONA WEBHOOK DELIVERY EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact delivery surface from BusinessOS to PersonaOS.

delivery_surface:
- transport_mode: webhook or equivalent event push surface
- producer_system: BusinessOS
- consumer_system: PersonaOS

required_request_headers:
- X-Business-Event-Id
- X-Business-Event-Type
- X-Business-Payload-Version
- X-Business-Idempotency-Key
- X-Business-Producer-Trace-Id

required_request_body_shape:
- envelope
- payload

delivery_rule:
- delivery must carry the exact Business-origin event contract unchanged in meaning
- transport-specific wrappers must not alter authoritative commercial meaning
- PersonaOS must be able to deduplicate using event_id or idempotency_key

security_rule:
- delivery authentication and signature handling may be layered on top
- security wrapper must not replace Business truth fields or identity fields

result:
- Business Persona webhook delivery exact contract fixed as a canonical meta record.
