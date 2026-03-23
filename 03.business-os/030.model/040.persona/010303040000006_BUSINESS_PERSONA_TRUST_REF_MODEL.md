# ============================================================
# BUSINESS PERSONA TRUST REF MODEL
# ============================================================

status: canonical
layer: 030.model
system: business-os
owner: Boss
prepared_by: Zero

purpose:
Reference Persona trust-related values inside BusinessOS.

role:
Represent Persona-originated trust and safety values used by BusinessOS
to gate assistant exposure.

primary_key:
- business_persona_trust_ref_id

natural_key:
- company_id
- business_user_id
- persona_id

fields:
- business_persona_trust_ref_id
- company_id
- business_user_id
- persona_id
- trust_score
- trust_level
- safety_score
- stability_score
- consistency_score
- evaluation_basis
- last_evaluated_at
- source_sync_event_id
- source_sync_version
- correlation_id
- synced_at
- created_at
- updated_at

trust_level_enum:
- blocked
- low
- medium
- high
- privileged

rules:
- permission and trust are separate
- granted permission with low trust may still restrict exposure
- PersonaOS is truth holder for trust values
