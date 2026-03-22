# BUSINESS_PERSONA_ACCESS_REF_MODEL

status: canonical
layer: model
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Reference PersonaOS access grant state for BusinessOS usage.

## FIELDS
- business_persona_access_ref_id
- business_persona_release_ref_id
- persona_access_grant_id
- holder_type
- holder_id
- access_scope
- grant_state
- expires_at
- revoked_at
- synced_at

## RULE
BusinessOS must deny Persona usage when grant state is not active.
