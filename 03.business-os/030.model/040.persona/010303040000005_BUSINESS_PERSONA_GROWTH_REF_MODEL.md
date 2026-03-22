# BUSINESS_PERSONA_GROWTH_REF_MODEL

status: canonical
layer: model
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Represent mirrored Persona growth state used by BusinessOS behavior.

## FIELDS
- business_persona_growth_ref_id
- persona_id
- persona_release_ref_id
- growth_dimension
- growth_value
- growth_version
- source_event_id
- reflected_at

## RULE
BusinessOS may mirror growth state for behavior calculation.
BusinessOS must not treat mirrored growth as authoritative truth.
