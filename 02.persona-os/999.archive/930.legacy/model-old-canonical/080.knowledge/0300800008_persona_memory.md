# ============================================================
# MODEL
# ============================================================

model_id: 0300800008
model_name: persona_memory

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents memory system of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona memory represents stored experiences,
interactions and learned information associated
with a persona.

Memory enables learning, reasoning and
long-term identity continuity.


# ============================================================
# RELATIONS
# ============================================================

persona_memory
 -> memory
 -> experience
 -> persona_event
