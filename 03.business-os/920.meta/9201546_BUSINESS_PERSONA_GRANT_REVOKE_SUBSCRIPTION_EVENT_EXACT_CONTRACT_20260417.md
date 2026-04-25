# ============================================================
# BUSINESS PERSONA GRANT REVOKE SUBSCRIPTION EVENT EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact payload contracts for grant, revoke, and subscription_change events.

grant_required_payload_fields:
- entitlement_id
- grant_reason_code
- effective_at
- entitlement_state = granted
- product_id when applicable
- sku_id when applicable
- source_order_id when applicable
- source_subscription_id when applicable
- expires_at when applicable

revoke_required_payload_fields:
- entitlement_id
- revoke_reason_code
- effective_at
- entitlement_state = revoked
- source_order_id when applicable
- source_subscription_id when applicable

subscription_change_required_payload_fields:
- subscription_id
- prior_state
- new_state
- plan_id
- effective_at
- renewal_at when applicable
- cancellation_at when applicable

consumer_meaning:
- grant
  - Business truth has created a usable commercial right
- revoke
  - Business truth has removed a usable commercial right
- subscription_change
  - Business truth has changed the authoritative subscription state

conflict_rule:
- Business-origin event payload wins over Persona-side retained state

result:
- grant, revoke, and subscription_change exact contracts fixed as a canonical meta record.
