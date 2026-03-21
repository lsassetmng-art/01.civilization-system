# ============================================================
# MODEL
# ============================================================

model_id: 0300600007
model_name: persona_relationship

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents relationship between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Persona relationship represents structured
connection between two or more personas.

Relationships may represent collaboration,
friendship, hierarchy or affiliation.


# ============================================================
# RELATIONS
# ============================================================

persona_relationship
 -> persona
 -> social_relation
 -> social_network
