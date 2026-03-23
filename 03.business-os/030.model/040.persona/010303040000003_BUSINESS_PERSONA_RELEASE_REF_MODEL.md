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

primary_key:
- business_persona_release_ref_id

natural_key:
- company_id
- persona_id
- release_version

fields:
- business_persona_release_ref_id
- company_id
- business_user_id
- persona_id
- release_version
- release_status
- compatibility_status
- effective_from
- effective_until
- invalid_reason
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

release_status_enum:
- pending
- active
- inactive
- deprecated
- revoked
- expired

compatibility_status_enum:
- compatible
- limited
- incompatible

rules:
- BusinessOS may only expose releases that are active and compatible
- PersonaOS is truth holder for release validity
