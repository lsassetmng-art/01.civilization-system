# persona_sync_event_contract

status: canonical
layer: model
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define canonical outbound sync event contract types from PersonaOS.

## EVENT TYPES
- PERSONA_RELEASE_ISSUED
- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- PERSONA_ACCESS_GRANT_CHANGED
- PERSONA_DISTRIBUTION_CHANGED

## RULE
Payloads must be deterministic and mirrorable.
