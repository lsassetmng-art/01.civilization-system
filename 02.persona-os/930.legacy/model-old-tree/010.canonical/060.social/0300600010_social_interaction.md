# ============================================================
# MODEL
# ============================================================

model_id: 0300600010
model_name: social_interaction

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents interaction between personas.


# ============================================================
# DESCRIPTION
# ============================================================

Social interaction represents exchange
of actions, communication or influence
between personas.


# ============================================================
# RELATIONS
# ============================================================

social_interaction
 -> persona_relationship
 -> communication
 -> behavior
