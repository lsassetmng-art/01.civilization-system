# ============================================================
# BUSINESS PERSONA GROWTH REQUEST MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Represent a Business-originated request to Persona growth processing.

role:
Canonical request object derived from business-side growth triggers
before or during outbox dispatch.

primary_key:
- growth_request_id

natural_key:
- company_id
- business_user_id
- persona_id
- request_idempotency_key

fields:
- growth_request_id
- company_id
- business_user_id
- persona_id
- growth_event_type
- growth_context_projection
- source_business_event_id
- request_status
- request_idempotency_key
- correlation_id
- causation_id
- created_at
- sent_at
- result_received_at
- updated_at

growth_event_type_examples:
- sales_milestone_reached
- customer_success_milestone
- approval_quality_milestone
- support_resolution_milestone
- continuity_milestone

request_status_enum:
- pending
- queued
- sent
- accepted
- rejected
- failed
- expired

rules:
- projection must contain only allowed Business-side data
- raw Persona truth must not be written here
- request_idempotency_key must suppress duplicate growth requests
