# PERSONA LICENSE REF MODEL

status: canonical
layer: model
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Reference PersonaOS license state needed by CivilizationOS.

## FIELDS
- persona_license_ref_id
- persona_release_ref_id
- license_code
- license_type
- entitlement_state
- transfer_allowed
- revoked
- effective_from
- effective_to
- synced_at

## RULE
CivilizationOS reads this model for commercial enforcement.
PersonaOS remains the source of truth.
