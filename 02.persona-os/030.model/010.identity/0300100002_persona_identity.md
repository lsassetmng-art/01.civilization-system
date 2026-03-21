# ============================================================
# MODEL
# ============================================================

model_id: 0300100002
model_name: persona_identity

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines the identity attributes of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona identity defines the stable identity
characteristics of a persona.

This includes:

- name
- identity type
- origin
- classification
- identity references


# ============================================================
# RELATIONS
# ============================================================

persona_identity
 -> persona
 -> persona_profile
 -> persona_role
