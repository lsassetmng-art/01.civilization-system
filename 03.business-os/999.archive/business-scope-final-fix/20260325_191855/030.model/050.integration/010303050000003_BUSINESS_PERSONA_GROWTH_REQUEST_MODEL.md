# ============================================================
# BUSINESS PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Represent a BusinessOS-originated request to Persona growth processing.

BusinessOS is primarily user-scoped.
Company context is optional and only relevant
when an ERP-send-capable flow must preserve outbound company context separately.

fields:
- growth_request_id
- business_user_id
- persona_id
- growth_event_type
- growth_context_projection
- request_status
- correlation_id
- erp_company_context_id
- created_at
- updated_at

rules:
- erp_company_context_id is optional
- company context must not be part of the default identity of this model
- Persona growth truth remains outside BusinessOS
