# ============================================================
# BUSINESS PERSONA USAGE BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Bind BusinessOS usage context to a Persona.

role:
Represent which Persona is bound to which business context.

primary_key:
- business_persona_usage_binding_id

natural_key:
- company_id
- business_user_id
- persona_id
- usage_context

fields:
- business_persona_usage_binding_id
- company_id
- business_user_id
- persona_id
- usage_context
- binding_status
- primary_persona_flag
- valid_from
- valid_until
- binding_reason
- source_sync_event_id
- correlation_id
- synced_at
- created_at
- updated_at

usage_context_examples:
- sales_assistant
- approval_assistant
- reporting_assistant
- support_assistant
- dashboard_assistant

binding_status_enum:
- pending
- active
- inactive
- revoked
- expired

rules:
- PersonaOS returns binding truth
- BusinessOS consumes and reflects binding state
- only active binding may be used
