# PERSONA ACCESS GRANT REF MODEL

status: canonical
layer: model
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Reference external access grant state for Persona-derived usage.

## FIELDS
- persona_access_grant_ref_id
- persona_release_ref_id
- holder_type
- holder_id
- access_scope
- access_state
- granted_at
- expires_at
- synced_at

## RULE
Access state must be synchronized from PersonaOS.
CivilizationOS must deny use when grant is inactive or expired.
