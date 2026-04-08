# ============================================================
# 012 INTEGRATION OVERVIEW
# ============================================================

status: canonical
layer: implementation
domain: integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the implementation overview of the integration domain.

summary:
The integration implementation layer maps contract-based boundary rules
into validators, projection filters, proposal-isolation handlers,
bounded-sync handlers, canonical-write guards,
replay readers, and trace emitters.

implementation_intent:
Implementation must preserve strict separation between
read-only projection, proposal-only intake,
bounded sync, canonical write, live event handoff,
replay event access, and audit access.

scope:
- contract validators
- projection handlers
- proposal-only handlers
- bounded-sync handlers
- canonical-write guards
- replay/history readers
- trace emitters
- denial handlers

required_behavior:
- Implement explicit contract-class routing.
- Implement proposal-only isolation.
- Implement scope-safe export projection.
- Implement authority-checked mutation paths.
- Implement replay/history-safe reads separated from live paths.
