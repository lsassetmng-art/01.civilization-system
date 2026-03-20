# ============================================================
# PERSONA INTERFACE CANONICAL
# ============================================================

status: canonical
layer: model
type: interface
owner: PersonaSystem

# ============================================================
# PRINCIPLE
# ============================================================

Persona is NOT owned by Civilization.

Persona is owned by PersonaSystem.

Civilization only references persona.

# ============================================================
# RULES
# ============================================================

- no persona data stored in Civilization
- only persona_id is referenced
- all state is resolved via PersonaSystem
- no duplication allowed
- snapshot is external resource

