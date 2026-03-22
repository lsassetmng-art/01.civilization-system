# ============================================================
# MODEL
# ============================================================

model_id: 0300600001
model_name: social_relation

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents relationship between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Social relations represent connections
such as friendship, partnership,
hierarchy or collaboration.


# ============================================================
# RELATIONS
# ============================================================

social_relation
 -> persona
 -> group
 -> social_role
