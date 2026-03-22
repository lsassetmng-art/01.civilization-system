# PERSONA RELEASE INTEGRATION ARCHITECTURE

status: canonical
layer: architecture
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Define how CivilizationOS integrates releasable Persona artifacts from PersonaOS.

## SOURCE OF TRUTH
PersonaOS is the source of truth for:
- persona identity
- persona profile
- persona snapshot
- release eligibility
- signature and issuance state

CivilizationOS is the source of truth for:
- product registration
- store presentation
- purchase record
- transaction record
- reward calculation

## RULE
CivilizationOS must never mutate Persona original state directly.
CivilizationOS may reference only released and externally usable Persona artifacts.

## INTEGRATION TARGET
The integration target is a releasable Persona artifact
such as a signed snapshot or equivalent external release unit.
