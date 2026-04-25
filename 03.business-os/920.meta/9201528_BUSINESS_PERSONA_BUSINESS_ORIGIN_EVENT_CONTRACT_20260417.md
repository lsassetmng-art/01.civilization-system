# ============================================================
# BUSINESS PERSONA BUSINESS ORIGIN EVENT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the BusinessOS to PersonaOS commercial event contract family.

contract_rule:
- Commercial authority originates in BusinessOS.
- PersonaOS receives business-origin events and updates mirror/apply-ready state.
- PersonaOS must not originate the authoritative commercial event for these cases.

minimum_event_family:
- purchase_complete
- grant
- revoke
- subscription_change

event_meaning:
- purchase_complete
  - a commercial purchase has completed in BusinessOS
  - PersonaOS may materialize apply-ready state from this event where applicable
- grant
  - a commercial right is granted by Business truth
  - PersonaOS may enable persona-side usable state
- revoke
  - a commercial right is revoked by Business truth
  - PersonaOS must disable or remove persona-side usable state accordingly
- subscription_change
  - the authoritative subscription state changed in BusinessOS
  - PersonaOS updates its mirror/apply-ready view accordingly

required_event_properties:
- event_id
- event_type
- occurred_at
- source_system = BusinessOS
- payload_version
- idempotency_key
- subject_type
- subject_id
- user_id and/or persona_id when applicable
- origin_order_id when applicable
- origin_subscription_id when applicable
- effective_at when applicable

contract_boundary:
- BusinessOS emits truth-origin events.
- PersonaOS consumes truth-origin events.
- PersonaOS local state must be downstream of these events, not upstream authority.

result:
- Business-origin event contract family fixed for BusinessOS to PersonaOS commercial sync.
