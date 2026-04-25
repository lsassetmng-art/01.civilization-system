# ============================================================
# BUSINESS PERSONA BUSINESS ORIGIN EVENT EXACT PAYLOAD
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix exact payload structure for Business-origin persona commercial events.

envelope_fields:
- event_id
- event_type
- source_system = BusinessOS
- occurred_at
- payload_version
- idempotency_key
- producer_trace_id

supported_event_types:
- purchase_complete
- grant
- revoke
- subscription_change

common_subject_fields:
- user_id
- persona_id when applicable
- subject_type
- subject_id
- product_id when applicable
- sku_id when applicable

purchase_complete_payload:
- order_id
- order_line_id when applicable
- purchase_status
- purchased_at
- commercial_effective_at
- grant_target_type when applicable
- grant_target_id when applicable

grant_payload:
- entitlement_id
- grant_reason_code
- effective_at
- expires_at when applicable
- source_order_id when applicable
- source_subscription_id when applicable

revoke_payload:
- entitlement_id
- revoke_reason_code
- effective_at
- source_order_id when applicable
- source_subscription_id when applicable

subscription_change_payload:
- subscription_id
- prior_state
- new_state
- plan_id
- effective_at
- renewal_at when applicable
- cancellation_at when applicable

consumer_rule:
- PersonaOS must be able to construct mirror / derived / apply-ready state without guessing missing commercial truth.

result:
- Exact Business-origin persona commercial event payload fixed as a canonical meta record.
