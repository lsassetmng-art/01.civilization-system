# ============================================================
# MODEL
# ============================================================

model_id: 0300100003
model_name: persona_profile

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines public persona attributes.


# ============================================================
# DESCRIPTION
# ============================================================

Persona profile represents the descriptive
representation of a persona.

Examples include:

- biography
- avatar reference
- public attributes
- descriptive information


# ============================================================
# RELATIONS
# ============================================================

persona_profile
 -> persona
 -> persona_identity
