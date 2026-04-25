# ============================================================
# BUSINESS PERSONA TRANSPORT ENDPOINT SURFACE REGISTRY
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the minimum endpoint surface registry for Business-origin Persona commercial transport.

endpoint_registry:
- event_delivery_endpoint
  - caller: BusinessOS
  - callee: PersonaOS
  - purpose: deliver Business-origin commercial event
- consumer_ack_surface
  - caller: PersonaOS
  - callee: BusinessOS transport layer
  - purpose: acknowledge delivery outcome
- replay_request_endpoint
  - caller: operator or internal Business control path
  - callee: BusinessOS replay control
  - purpose: request replay of preserved event material
- replay_status_endpoint
  - caller: operator or internal Business control path
  - callee: BusinessOS replay control
  - purpose: inspect replay execution state
- reconciliation_request_endpoint
  - caller: operator or internal Business control path
  - callee: BusinessOS reconciliation control
  - purpose: request downstream convergence activity
- reconciliation_status_endpoint
  - caller: operator or internal Business control path
  - callee: BusinessOS reconciliation control
  - purpose: inspect reconciliation job state

registry_rule:
- naming may vary by implementation
- meaning and responsibility must remain fixed
- endpoint surface must not let PersonaOS overwrite Business commercial truth

result:
- Transport endpoint surface registry fixed as a canonical meta record.
