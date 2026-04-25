# ============================================================
# BUSINESS PERSONA EVENT MINIMUM PAYLOAD RULE
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the minimum payload surface for business-origin persona commercial events.

applies_to:
- purchase_complete
- grant
- revoke
- subscription_change

minimum_fields:
- event_id
- event_type
- occurred_at
- source_system
- payload_version
- idempotency_key
- subject_type
- subject_id

conditional_fields_when_applicable:
- user_id
- persona_id
- order_id
- subscription_id
- entitlement_id
- product_id
- sku_id
- effective_at
- reason_code
- prior_state
- new_state

event_contract_rule:
- source_system must be BusinessOS
- payload must be sufficient for PersonaOS to build mirror / derived / apply-ready state
- payload must not require PersonaOS to guess commercial truth

result:
- Minimum business-origin event payload rule fixed as a canonical meta record.
