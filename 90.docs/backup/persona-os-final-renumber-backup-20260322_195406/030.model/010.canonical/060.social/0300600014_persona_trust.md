# ============================================================
# MODEL
# ============================================================

model_id: 0300600014
model_name: persona_trust

domain: 0060.social
system: 03.persona_os

# PURPOSE
Represents trust level.

# DESCRIPTION
Persona trust measures reliability
assigned to another persona.

# RELATIONS
persona_trust
 -> persona_relationship
 -> social_interaction
