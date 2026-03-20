# PERSONA LICENSE BOUNDARY ARCHITECTURE

status: canonical
layer: architecture
domain: persona
owner: Boss
prepared_by: Zero

## PURPOSE
Define the boundary between PersonaOS license authority and CivilizationOS commercial usage.

## SOURCE OF TRUTH
PersonaOS is the source of truth for:
- license issuance
- entitlement validity
- access grant
- transfer permission
- revocation state

CivilizationOS may:
- sell usage rights
- reference active license state
- reflect availability in product/store UI
- deny access when PersonaOS reports invalid state

## RULE
CivilizationOS must not invent or override license state.
License validity must be synchronized from PersonaOS.
