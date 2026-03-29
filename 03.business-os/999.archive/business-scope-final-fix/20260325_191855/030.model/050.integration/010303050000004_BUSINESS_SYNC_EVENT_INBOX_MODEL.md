# ============================================================
# BUSINESS SYNC EVENT INBOX MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Store inbound sync results received by BusinessOS from connected systems.

BusinessOS is primarily user-scoped.
Company context may be attached only when needed
to preserve ERP-related outbound/inbound linkage context.

fields:
- inbox_event_id
- sync_event_type
- source_system
- payload
- consume_status
- correlation_id
- erp_company_context_id
- created_at
- consumed_at
- updated_at

rules:
- erp_company_context_id is optional
- inbound sync truth must not assume company-scope by default
