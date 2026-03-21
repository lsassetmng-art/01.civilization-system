# ============================================================
# MODEL
# ============================================================

model_id: 0300600013
model_name: persona_relationship

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents relationship between personas.

# DESCRIPTION
Persona relationship stores trust,
familiarity and interaction history.

# RELATIONS
persona_relationship
 -> social_network
 -> persona
