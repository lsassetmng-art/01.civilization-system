# ============================================================
# BUSINESS PERSONA EVENT ENVELOPE EXACT CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact envelope contract for Business-origin persona commercial events.

envelope_contract:
- event_id: string, required
- event_type: enum, required
- source_system: fixed string `BusinessOS`
- payload_version: string, required
- occurred_at: RFC3339 datetime, required
- effective_at: RFC3339 datetime, conditionally required
- idempotency_key: string, required
- producer_trace_id: string, required
- causation_event_id: string, optional
- correlation_id: string, optional
- tenant_scope: string or company scope id, optional when not used
- user_id: string, conditionally required
- persona_id: string, conditionally required
- subject_type: enum, required
- subject_id: string, required
- payload: object, required

event_type_enum:
- purchase_complete
- grant
- revoke
- subscription_change

subject_type_enum:
- product
- sku
- order
- subscription
- entitlement
- persona

contract_rule:
- envelope must be sufficient to route, deduplicate, trace, and project downstream state
- source_system must remain BusinessOS for authoritative commercial events
- payload_version must change only on explicit contract revision

result:
- Event envelope exact contract fixed as a canonical meta record.
