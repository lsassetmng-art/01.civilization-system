# ============================================================
# MODEL
# ============================================================

model_id: 0300100004
model_name: persona_state

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents the current operational state of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona state captures dynamic runtime
conditions of a persona.

Examples:

- active
- inactive
- suspended
- degraded


# ============================================================
# RELATIONS
# ============================================================

persona_state
 -> persona
 -> persona_lifecycle
