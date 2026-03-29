# ============================================================
# BUSINESS PERSONA RELEASE REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona release validity state inside BusinessOS.

role:
Represent whether a Persona release/version is currently valid
for BusinessOS usage.

BusinessOS is primarily user-scoped.
Release visibility may later participate in ERP-send-capable app flows,
but company context is optional and not part of default identity.

primary_key:
- business_persona_release_ref_id

natural_key:
- business_user_id
- persona_id
- persona_release_id

fields:
- business_persona_release_ref_id
- business_user_id
- persona_id
- persona_release_id
- release_validity_status
- release_scope
- erp_company_context_id
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

release_validity_status_enum:
- pending
- valid
- invalid
- revoked
- expired

rules:
- PersonaOS remains truth holder
- BusinessOS must treat invalid/revoked as unusable
- erp_company_context_id is optional and not part of the natural key
