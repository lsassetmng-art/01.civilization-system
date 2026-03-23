# ============================================================
# BUSINESS PERSONA ACCESS REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona access state inside BusinessOS.

role:
This model is a synchronized reference model.
Truth belongs to PersonaOS.
BusinessOS must not directly author Persona truth here.

primary_key:
- business_persona_access_ref_id

natural_key:
- company_id
- business_user_id
- persona_id

fields:
- business_persona_access_ref_id
- company_id
- business_user_id
- persona_id
- persona_code
- access_status
- access_scope
- access_granted_at
- access_expires_at
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

access_status_enum:
- pending
- active
- suspended
- revoked
- expired

access_scope_examples:
- assistant.read
- assistant.chat
- assistant.execute_limited
- assistant.execute_extended

rules:
- only Persona-originated sync results may change access_status
- BusinessOS may cache and read this model
- BusinessOS must treat expired and revoked as unusable
- correlation_id must trace back to Persona sync result when applicable
