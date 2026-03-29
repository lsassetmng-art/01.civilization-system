# ============================================================
# BUSINESS EVENT OUTBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Store outbound integration events emitted from BusinessOS.

BusinessOS is primarily user-scoped.
ERP company context may be attached only when the outbound event
represents an ERP-send-capable app flow.

fields:
- outbox_event_id
- event_type
- aggregate_type
- aggregate_id
- payload
- dispatch_status
- retry_count
- correlation_id
- causation_id
- erp_company_context_id
- erp_payload_type
- created_at
- updated_at

rules:
- erp_company_context_id is optional
- company context must be attached only for ERP-send-capable outbound events
- default BusinessOS outbound events remain user/workspace-scoped
