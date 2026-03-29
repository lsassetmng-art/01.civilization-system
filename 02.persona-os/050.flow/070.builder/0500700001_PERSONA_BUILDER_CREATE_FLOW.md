# ============================================================
# PERSONA BUILDER CREATE FLOW
# ============================================================

status: canonical
scope: persona.builder.create.flow
system: persona-os
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical create flow for Persona Builder.

This flow governs the creation of a new Persona draft
inside PersonaOS Builder space.


# ============================================================
# FLOW PRINCIPLE
# ============================================================

Creation flow must be explicit, auditable,
and separate from final Persona truth establishment.


# ============================================================
# FLOW
# ============================================================

1. create request received
2. actor identity confirmed
3. builder draft shell initialized
4. target persona reference issued or reserved
5. required initial sections created
6. draft status set to draft
7. audit record written
8. builder runtime context initialized

Creation must fail closed if:

- actor identity is unresolved
- required minimum structure cannot be created
- audit persistence fails


# ============================================================
# OUTPUT
# ============================================================

Creation flow outputs:

- builder draft reference
- initial section state set
- runtime context reference
- audit reference
