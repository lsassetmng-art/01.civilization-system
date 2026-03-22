# BUSINESS SYNC CONSUMER ARCHITECTURE

status: canonical
layer: architecture
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define BusinessOS as a consumer of PersonaOS outbox-based sync events.

## RULE
BusinessOS receives Persona-originated events and updates mirrored ref state.
BusinessOS must not treat itself as the source of Persona truth.

## TARGET EVENTS
- PERSONA_RELEASE_ISSUED
- PERSONA_RELEASE_REVOKED
- PERSONA_LICENSE_CHANGED
- PERSONA_ACCESS_GRANT_CHANGED
- PERSONA_DISTRIBUTION_CHANGED
