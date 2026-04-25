# ============================================================
# MODEL
# ============================================================

model_id: 0300800009
model_name: persona_event

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event experienced by persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona event represents significant occurrence
involving persona such as interaction,
decision or environmental change.


# ============================================================
# RELATIONS
# ============================================================

persona_event
 -> persona_memory
 -> experience
 -> emotion_trigger
