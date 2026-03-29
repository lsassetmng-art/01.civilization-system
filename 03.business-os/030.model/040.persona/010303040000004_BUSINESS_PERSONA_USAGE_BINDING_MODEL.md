# ============================================================
# BUSINESS PERSONA USAGE BINDING MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Represent BusinessOS-side binding between a user/workspace app context
and a Persona-derived unit.

BusinessOS is primarily user-scoped.
Bindings should be rooted in user/workspace/app context.
Company context is optional and only relevant for ERP-send-capable flows.

primary_key:
- business_persona_usage_binding_id

natural_key:
- business_user_id
- persona_id
- binding_scope_type
- binding_scope_id

fields:
- business_persona_usage_binding_id
- business_user_id
- persona_id
- binding_scope_type
- binding_scope_id
- binding_status
- binding_summary
- erp_company_context_id
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

binding_scope_type_examples:
- workspace
- app_module
- app_feature
- assistant_surface

binding_status_enum:
- pending
- active
- suspended
- revoked
- expired

rules:
- PersonaOS remains truth holder for rights-validity inputs
- BusinessOS uses this model for local binding visibility only
- erp_company_context_id is optional
