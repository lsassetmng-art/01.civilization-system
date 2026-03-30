# PERSONA ACCESS GRANT ARCHITECTURE

status: canonical
layer: architecture
domain: external_rights
owner: Boss
prepared_by: Zero

## PURPOSE
Define canonical access grant authority for externally usable Persona artifacts.

## SOURCE OF TRUTH
PersonaOS is the sole source of truth for:
- access grant issuance
- access scope
- access expiration
- access revocation
- access suspension

## RULE
External systems may reference access grant state,
but may not invent, override, or extend grant validity.
