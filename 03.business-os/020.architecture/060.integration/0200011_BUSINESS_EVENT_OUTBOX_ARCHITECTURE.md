# BUSINESS EVENT OUTBOX ARCHITECTURE

status: canonical
layer: architecture
domain: integration
owner: Boss
prepared_by: Zero

## PURPOSE
Define Event Outbox as the canonical outbound integration mechanism for BusinessOS.

## RULE
BusinessOS must not directly mutate PersonaOS growth truth.
BusinessOS publishes approved outbound growth requests through an event outbox.

## TARGET EVENTS
- BUSINESS_PERSONA_GROWTH_INCREMENT_REQUESTED
- BUSINESS_PERSONA_GROWTH_DECREMENT_REQUESTED
- BUSINESS_PERSONA_GROWTH_SET_REQUESTED
- BUSINESS_PERSONA_GROWTH_RECALCULATION_REQUESTED

## DOWNSTREAM
- PersonaOS
