# PERSONA BUSINESS INTEGRATION ARCHITECTURE

status: canonical
layer: architecture
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Define how BusinessOS integrates Persona-derived externally usable units.

## SOURCE OF TRUTH
PersonaOS is the source of truth for:
- persona identity
- persona snapshot release
- persona license
- persona access grant
- transferability and revocation

BusinessOS is the source of truth for:
- business app context
- workspace context
- role and access context
- app-level Persona usage mapping

## RULE
BusinessOS must not mutate Persona original state.
BusinessOS may use only externally releasable Persona units
whose rights state is valid in PersonaOS.
